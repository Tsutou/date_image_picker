// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picker_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickerItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) section,
    required TResult Function(AssetEntity asset, String? editedFileName) photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? section,
    TResult? Function(AssetEntity asset, String? editedFileName)? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? section,
    TResult Function(AssetEntity asset, String? editedFileName)? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Section value) section,
    required TResult Function(PickPhoto value) photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Section value)? section,
    TResult? Function(PickPhoto value)? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Section value)? section,
    TResult Function(PickPhoto value)? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerItemCopyWith<$Res> {
  factory $PickerItemCopyWith(
          PickerItem value, $Res Function(PickerItem) then) =
      _$PickerItemCopyWithImpl<$Res, PickerItem>;
}

/// @nodoc
class _$PickerItemCopyWithImpl<$Res, $Val extends PickerItem>
    implements $PickerItemCopyWith<$Res> {
  _$PickerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SectionCopyWith<$Res> {
  factory _$$SectionCopyWith(_$Section value, $Res Function(_$Section) then) =
      __$$SectionCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SectionCopyWithImpl<$Res>
    extends _$PickerItemCopyWithImpl<$Res, _$Section>
    implements _$$SectionCopyWith<$Res> {
  __$$SectionCopyWithImpl(_$Section _value, $Res Function(_$Section) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$Section(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Section implements Section {
  const _$Section(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'PickerItem.section(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Section &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionCopyWith<_$Section> get copyWith =>
      __$$SectionCopyWithImpl<_$Section>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) section,
    required TResult Function(AssetEntity asset, String? editedFileName) photo,
  }) {
    return section(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? section,
    TResult? Function(AssetEntity asset, String? editedFileName)? photo,
  }) {
    return section?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? section,
    TResult Function(AssetEntity asset, String? editedFileName)? photo,
    required TResult orElse(),
  }) {
    if (section != null) {
      return section(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Section value) section,
    required TResult Function(PickPhoto value) photo,
  }) {
    return section(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Section value)? section,
    TResult? Function(PickPhoto value)? photo,
  }) {
    return section?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Section value)? section,
    TResult Function(PickPhoto value)? photo,
    required TResult orElse(),
  }) {
    if (section != null) {
      return section(this);
    }
    return orElse();
  }
}

abstract class Section implements PickerItem {
  const factory Section(final DateTime date) = _$Section;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$SectionCopyWith<_$Section> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickPhotoCopyWith<$Res> {
  factory _$$PickPhotoCopyWith(
          _$PickPhoto value, $Res Function(_$PickPhoto) then) =
      __$$PickPhotoCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetEntity asset, String? editedFileName});
}

/// @nodoc
class __$$PickPhotoCopyWithImpl<$Res>
    extends _$PickerItemCopyWithImpl<$Res, _$PickPhoto>
    implements _$$PickPhotoCopyWith<$Res> {
  __$$PickPhotoCopyWithImpl(
      _$PickPhoto _value, $Res Function(_$PickPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? editedFileName = freezed,
  }) {
    return _then(_$PickPhoto(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      editedFileName: freezed == editedFileName
          ? _value.editedFileName
          : editedFileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PickPhoto implements PickPhoto {
  const _$PickPhoto({required this.asset, this.editedFileName});

  @override
  final AssetEntity asset;
  @override
  final String? editedFileName;

  @override
  String toString() {
    return 'PickerItem.photo(asset: $asset, editedFileName: $editedFileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickPhoto &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.editedFileName, editedFileName) ||
                other.editedFileName == editedFileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset, editedFileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickPhotoCopyWith<_$PickPhoto> get copyWith =>
      __$$PickPhotoCopyWithImpl<_$PickPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) section,
    required TResult Function(AssetEntity asset, String? editedFileName) photo,
  }) {
    return photo(asset, editedFileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? section,
    TResult? Function(AssetEntity asset, String? editedFileName)? photo,
  }) {
    return photo?.call(asset, editedFileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? section,
    TResult Function(AssetEntity asset, String? editedFileName)? photo,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(asset, editedFileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Section value) section,
    required TResult Function(PickPhoto value) photo,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Section value)? section,
    TResult? Function(PickPhoto value)? photo,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Section value)? section,
    TResult Function(PickPhoto value)? photo,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class PickPhoto implements PickerItem {
  const factory PickPhoto(
      {required final AssetEntity asset,
      final String? editedFileName}) = _$PickPhoto;

  AssetEntity get asset;
  String? get editedFileName;
  @JsonKey(ignore: true)
  _$$PickPhotoCopyWith<_$PickPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
