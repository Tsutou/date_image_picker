import 'dart:io';

import 'package:date_image_picker/ext/asset_entity_extension.dart';
import 'package:date_image_picker/page/picker_argument.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';

import '../structure/picker_filter.dart';
import '../structure/picker_item.dart';
import '../structure/picker_path.dart';

class PickerViewModel extends GetxController with GetTickerProviderStateMixin {
  final int maxPickCount;

  late final PickerPageArguments pageArguments;
  final shouldShowLimitedPhotoPermissionView = false.obs;
  final isLimitedPhotoPermission = false.obs;
  final currentFilterType = const PickerFilter.none().obs;

  TabController? assetFoldersTabController;

  final isLoading = false.obs;
  final Rx<String> currentAssetFolderId = ''.obs;
  final RxList<PickerPath> assetFolders = RxList.empty();
  final RxList<PickPhoto> pickPhotos = RxList.empty();

  PickerViewModel({
    required this.maxPickCount,
  }) {
    pageArguments = Get.arguments as PickerPageArguments;
    final currentPhotos = pageArguments.photoIds;
    if (currentPhotos != null) {
      _makeCheckboxSelectedIfPhotoExists(currentPhotos);
    }

    // init filter
    final targetDate = pageArguments.targetDate;
    currentFilterType.value = targetDate == null
        ? const PickerFilter.none()
        : PickerFilter.date(targetDate);
  }

  bool isSingleMode() => maxPickCount == 1;

  bool isFilterMode() => pageArguments.targetDate != null;

  @override
  Future<void> onInit() async {
    super.onInit();
    if (Platform.isIOS) {
      await _setUpForLimitedPhotoPermission();
    }
    await loadDeviceFoldersList();
  }

  @override
  void onClose() {
    assetFoldersTabController
      ?..removeListener(updateCurrentPath)
      ..dispose();
    super.onClose();
  }

  Future<void> loadDeviceFoldersList() async {
    assetFolders.clear();
    isLoading.value = true;
    update();

    final currentFilter = currentFilterType.value;

    final folders = await PhotoManager.getAssetPathList(
      hasAll: true,
      type: RequestType.image,
      filterOption: FilterOptionGroup(
        createTimeCond: currentFilter is Date
            ? DateTimeCond(
                min: DateTime(
                  ///1日
                  currentFilter.date.year,
                  currentFilter.date.month,
                  1,
                ),
                max: DateTime(
                  ///末日
                  currentFilter.date.year,
                  currentFilter.date.month + 1,
                  1,
                ),
              )
            : null,
        orders: [
          const OrderOption(type: OrderOptionType.createDate),
        ],
      ),
    );

    final emptyFolders = await Future.wait(
      folders.map(
        (folder) async => await folder.assetCountAsync == 0 ? folder : null,
      ),
    );

    // 空のフォルダ & スクリーンショットを削除
    folders.removeWhere(
      (folder) =>
          emptyFolders.whereType<AssetPathEntity>().contains(folder) ||
          folder.name.toLowerCase().contains("screenshot") ||
          folder.name.contains("スクリーンショット"),
    );

    // 何もなければEmpty表示のためにUIを更新する
    if (folders.isEmpty) {
      update();
      isLoading.value = false;
      return;
    }

    final assetsFoldersList = await Future.wait(
      folders.map(
        (path) async {
          final assetCount = await path.assetCountAsync;
          for (var i = 0; i < assetCount; i++) {
            final assets = await path.getAssetListRange(
              start: i,
              end: i + 1,
            );
            if (assets.first.isScreenShot()) {
              continue;
            }
            return PickerPath.directory(
              assets.first,
              path,
            );
          }
          return null;
        },
      ),
    );

    assetFolders.addAll(
      assetsFoldersList.whereType<PickerPath>().toList(),
    );

    if (assetFolders.isEmpty) {
      update();
      isLoading.value = false;
      return;
    }

    assetFolders.sort(
      (a, b) {
        final modifiedDateFirst = a.thumbnailAsset.modifiedDateTime;
        final modifiedDateSecond = b.thumbnailAsset.modifiedDateTime;

        ///降順ソート
        return -1 * modifiedDateFirst.compareTo(modifiedDateSecond);
      },
    );

    // set Tab
    assetFoldersTabController
      ?..removeListener(updateCurrentPath)
      ..dispose();
    assetFoldersTabController = null;
    assetFoldersTabController = TabController(
      length: assetFolders.length,
      vsync: this,
      animationDuration: const Duration(milliseconds: 100),
    );
    assetFoldersTabController?.addListener(updateCurrentPath);
    updateCurrentPath();
    isLoading.value = false;
  }

  bool isFoldersTabsActive() => assetFoldersTabController != null;

  void updateCurrentPath() {
    final foldersRowIndex = assetFoldersTabController?.index;
    if (foldersRowIndex == null) {
      return;
    }
    currentAssetFolderId.value =
        assetFolders[foldersRowIndex].assetPathEntity.id;
    update();
  }

  Future<void> updateFilterType(PickerFilter filterType) async {
    if (isLoading.isTrue || currentFilterType.value == filterType) {
      return;
    }
    currentFilterType.value = filterType;
    await loadDeviceFoldersList();
  }

  bool isPickedPhoto(PickPhoto photo) => pickPhotos
      .where((pickPhoto) => pickPhoto.asset == photo.asset)
      .isNotEmpty;

  void onChangePhotoCheckStatus(
    PickPhoto photo, {
    bool onlyAdd = false,
  }) {
    if (isPickedPhoto(photo)) {
      if (onlyAdd) {
        return;
      }
      pickPhotos.removeWhere(
        (pickedPhoto) => pickedPhoto.asset == photo.asset,
      );
    } else {
      if (pickPhotos.length >= maxPickCount) {
        if (isSingleMode()) {
          pickPhotos.clear();
        } else {
          // void _showExceedMaxCountDialog() => showPlatformDialog(
          //       Get.context!,
          //       title: "${maxPickCount.toString()}枚以上選択できません",
          //       androidDisableClosing: false,
          //       actions: [
          //         PositiveDialogAction(),
          //       ],
          //     );
          // _showExceedMaxCountDialog();
          return;
        }
      }
      pickPhotos.add(photo);
    }
    update();
  }

  Future<void> _makeCheckboxSelectedIfPhotoExists(
    List<String> currentPrintPhotoDataList,
  ) async {
    final existingPickPhotoOrNullList = await Future.wait(
      currentPrintPhotoDataList.map(
        (id) async {
          // ローカルから写真が削除されている場合はnullになる
          final asset = await AssetEntity.fromId(id);
          if (asset == null || !await asset.exists) return null;

          return PickPhoto(
            asset: asset,
            editedFileName: null,
          );
        },
      ).toList(),
    );

    pickPhotos.value =
        existingPickPhotoOrNullList.whereType<PickPhoto>().toList();
  }

  Future<void> _setUpForLimitedPhotoPermission() async {
    final status = await Permission.photos.request();
    isLimitedPhotoPermission.value = status.isLimited;
    shouldShowLimitedPhotoPermissionView.value = status.isLimited;
  }
}
