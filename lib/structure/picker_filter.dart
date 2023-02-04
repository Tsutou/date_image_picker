import 'package:freezed_annotation/freezed_annotation.dart';

part 'picker_filter.freezed.dart';

@freezed
class PickerFilter with _$PickerFilter {
  const factory PickerFilter.none() = None;

  const factory PickerFilter.all() = All;

  const factory PickerFilter.date(DateTime date) = Date;
}
