import 'dart:collection';

import 'package:date_image_picker/structure/picker_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picker_assets_ui_state.freezed.dart';

@freezed
class PickerAssetsUiState with _$PickerAssetsUiState {
  const factory PickerAssetsUiState.loaded(
    SplayTreeMap<Section, List<PickPhoto>> items,
  ) = Loaded;

  const factory PickerAssetsUiState.loading() = Loading;
}
