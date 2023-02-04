import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'picker_item.freezed.dart';

@freezed
class PickerItem with _$PickerItem {
  const factory PickerItem.section(
    DateTime date,
  ) = Section;

  const factory PickerItem.photo({
    required AssetEntity asset,
    String? editedFileName,
  }) = PickPhoto;
}
