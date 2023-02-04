// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picker_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickerPath {
  AssetEntity get thumbnailAsset => throw _privateConstructorUsedError;
  AssetPathEntity get assetPathEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)?
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)?
        directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Directory value) directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Directory value)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Directory value)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickerPathCopyWith<PickerPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerPathCopyWith<$Res> {
  factory $PickerPathCopyWith(
          PickerPath value, $Res Function(PickerPath) then) =
      _$PickerPathCopyWithImpl<$Res, PickerPath>;
  @useResult
  $Res call({AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity});
}

/// @nodoc
class _$PickerPathCopyWithImpl<$Res, $Val extends PickerPath>
    implements $PickerPathCopyWith<$Res> {
  _$PickerPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailAsset = null,
    Object? assetPathEntity = null,
  }) {
    return _then(_value.copyWith(
      thumbnailAsset: null == thumbnailAsset
          ? _value.thumbnailAsset
          : thumbnailAsset // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      assetPathEntity: null == assetPathEntity
          ? _value.assetPathEntity
          : assetPathEntity // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectoryCopyWith<$Res> implements $PickerPathCopyWith<$Res> {
  factory _$$DirectoryCopyWith(
          _$Directory value, $Res Function(_$Directory) then) =
      __$$DirectoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity});
}

/// @nodoc
class __$$DirectoryCopyWithImpl<$Res>
    extends _$PickerPathCopyWithImpl<$Res, _$Directory>
    implements _$$DirectoryCopyWith<$Res> {
  __$$DirectoryCopyWithImpl(
      _$Directory _value, $Res Function(_$Directory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailAsset = null,
    Object? assetPathEntity = null,
  }) {
    return _then(_$Directory(
      null == thumbnailAsset
          ? _value.thumbnailAsset
          : thumbnailAsset // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      null == assetPathEntity
          ? _value.assetPathEntity
          : assetPathEntity // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity,
    ));
  }
}

/// @nodoc

class _$Directory implements Directory {
  const _$Directory(this.thumbnailAsset, this.assetPathEntity);

  @override
  final AssetEntity thumbnailAsset;
  @override
  final AssetPathEntity assetPathEntity;

  @override
  String toString() {
    return 'PickerPath.directory(thumbnailAsset: $thumbnailAsset, assetPathEntity: $assetPathEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Directory &&
            (identical(other.thumbnailAsset, thumbnailAsset) ||
                other.thumbnailAsset == thumbnailAsset) &&
            (identical(other.assetPathEntity, assetPathEntity) ||
                other.assetPathEntity == assetPathEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbnailAsset, assetPathEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryCopyWith<_$Directory> get copyWith =>
      __$$DirectoryCopyWithImpl<_$Directory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)
        directory,
  }) {
    return directory(thumbnailAsset, assetPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)?
        directory,
  }) {
    return directory?.call(thumbnailAsset, assetPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AssetEntity thumbnailAsset, AssetPathEntity assetPathEntity)?
        directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(thumbnailAsset, assetPathEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Directory value) directory,
  }) {
    return directory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Directory value)? directory,
  }) {
    return directory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Directory value)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this);
    }
    return orElse();
  }
}

abstract class Directory implements PickerPath {
  const factory Directory(final AssetEntity thumbnailAsset,
      final AssetPathEntity assetPathEntity) = _$Directory;

  @override
  AssetEntity get thumbnailAsset;
  @override
  AssetPathEntity get assetPathEntity;
  @override
  @JsonKey(ignore: true)
  _$$DirectoryCopyWith<_$Directory> get copyWith =>
      throw _privateConstructorUsedError;
}
