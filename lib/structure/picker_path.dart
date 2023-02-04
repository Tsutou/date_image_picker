import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'picker_path.freezed.dart';

@freezed
class PickerPath with _$PickerPath {
  const factory PickerPath.directory(
    AssetEntity thumbnailAsset,
    AssetPathEntity assetPathEntity,
  ) = Directory;
}
