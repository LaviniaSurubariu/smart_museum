// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkImage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl) $default, {
    required TResult Function(String newPicturePath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult? Function(String newPicturePath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult Function(String newPicturePath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value) $default, {
    required TResult Function(UpdateArtworkImageSuccessful value) successful,
    required TResult Function(UpdateArtworkImageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkImageStart value)? $default, {
    TResult? Function(UpdateArtworkImageSuccessful value)? successful,
    TResult? Function(UpdateArtworkImageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value)? $default, {
    TResult Function(UpdateArtworkImageSuccessful value)? successful,
    TResult Function(UpdateArtworkImageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkImageCopyWith<$Res> {
  factory $UpdateArtworkImageCopyWith(UpdateArtworkImage value, $Res Function(UpdateArtworkImage) then) =
      _$UpdateArtworkImageCopyWithImpl<$Res, UpdateArtworkImage>;
}

/// @nodoc
class _$UpdateArtworkImageCopyWithImpl<$Res, $Val extends UpdateArtworkImage>
    implements $UpdateArtworkImageCopyWith<$Res> {
  _$UpdateArtworkImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkImageStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkImageStartImplCopyWith(
          _$UpdateArtworkImageStartImpl value, $Res Function(_$UpdateArtworkImageStartImpl) then) =
      __$$UpdateArtworkImageStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl});
}

/// @nodoc
class __$$UpdateArtworkImageStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkImageCopyWithImpl<$Res, _$UpdateArtworkImageStartImpl>
    implements _$$UpdateArtworkImageStartImplCopyWith<$Res> {
  __$$UpdateArtworkImageStartImplCopyWithImpl(
      _$UpdateArtworkImageStartImpl _value, $Res Function(_$UpdateArtworkImageStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPicturePath = null,
    Object? artworkId = null,
    Object? artworkTitle = null,
    Object? oldPictureUrl = null,
  }) {
    return _then(_$UpdateArtworkImageStartImpl(
      newPicturePath: null == newPicturePath
          ? _value.newPicturePath
          : newPicturePath // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
      artworkTitle: null == artworkTitle
          ? _value.artworkTitle
          : artworkTitle // ignore: cast_nullable_to_non_nullable
              as String,
      oldPictureUrl: null == oldPictureUrl
          ? _value.oldPictureUrl
          : oldPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkImageStartImpl implements UpdateArtworkImageStart {
  const _$UpdateArtworkImageStartImpl(
      {required this.newPicturePath, required this.artworkId, required this.artworkTitle, required this.oldPictureUrl});

  @override
  final String newPicturePath;
  @override
  final String artworkId;
  @override
  final String artworkTitle;
  @override
  final String oldPictureUrl;

  @override
  String toString() {
    return 'UpdateArtworkImage(newPicturePath: $newPicturePath, artworkId: $artworkId, artworkTitle: $artworkTitle, oldPictureUrl: $oldPictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkImageStartImpl &&
            (identical(other.newPicturePath, newPicturePath) || other.newPicturePath == newPicturePath) &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId) &&
            (identical(other.artworkTitle, artworkTitle) || other.artworkTitle == artworkTitle) &&
            (identical(other.oldPictureUrl, oldPictureUrl) || other.oldPictureUrl == oldPictureUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPicturePath, artworkId, artworkTitle, oldPictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkImageStartImplCopyWith<_$UpdateArtworkImageStartImpl> get copyWith =>
      __$$UpdateArtworkImageStartImplCopyWithImpl<_$UpdateArtworkImageStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl) $default, {
    required TResult Function(String newPicturePath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newPicturePath, artworkId, artworkTitle, oldPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult? Function(String newPicturePath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newPicturePath, artworkId, artworkTitle, oldPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult Function(String newPicturePath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newPicturePath, artworkId, artworkTitle, oldPictureUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value) $default, {
    required TResult Function(UpdateArtworkImageSuccessful value) successful,
    required TResult Function(UpdateArtworkImageError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkImageStart value)? $default, {
    TResult? Function(UpdateArtworkImageSuccessful value)? successful,
    TResult? Function(UpdateArtworkImageError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value)? $default, {
    TResult Function(UpdateArtworkImageSuccessful value)? successful,
    TResult Function(UpdateArtworkImageError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkImageStart implements UpdateArtworkImage {
  const factory UpdateArtworkImageStart(
      {required final String newPicturePath,
      required final String artworkId,
      required final String artworkTitle,
      required final String oldPictureUrl}) = _$UpdateArtworkImageStartImpl;

  String get newPicturePath;
  String get artworkId;
  String get artworkTitle;
  String get oldPictureUrl;
  @JsonKey(ignore: true)
  _$$UpdateArtworkImageStartImplCopyWith<_$UpdateArtworkImageStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkImageSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkImageSuccessfulImplCopyWith(
          _$UpdateArtworkImageSuccessfulImpl value, $Res Function(_$UpdateArtworkImageSuccessfulImpl) then) =
      __$$UpdateArtworkImageSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPicturePath});
}

/// @nodoc
class __$$UpdateArtworkImageSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkImageCopyWithImpl<$Res, _$UpdateArtworkImageSuccessfulImpl>
    implements _$$UpdateArtworkImageSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkImageSuccessfulImplCopyWithImpl(
      _$UpdateArtworkImageSuccessfulImpl _value, $Res Function(_$UpdateArtworkImageSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPicturePath = null,
  }) {
    return _then(_$UpdateArtworkImageSuccessfulImpl(
      null == newPicturePath
          ? _value.newPicturePath
          : newPicturePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkImageSuccessfulImpl implements UpdateArtworkImageSuccessful {
  const _$UpdateArtworkImageSuccessfulImpl(this.newPicturePath);

  @override
  final String newPicturePath;

  @override
  String toString() {
    return 'UpdateArtworkImage.successful(newPicturePath: $newPicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkImageSuccessfulImpl &&
            (identical(other.newPicturePath, newPicturePath) || other.newPicturePath == newPicturePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPicturePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkImageSuccessfulImplCopyWith<_$UpdateArtworkImageSuccessfulImpl> get copyWith =>
      __$$UpdateArtworkImageSuccessfulImplCopyWithImpl<_$UpdateArtworkImageSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl) $default, {
    required TResult Function(String newPicturePath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newPicturePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult? Function(String newPicturePath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newPicturePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult Function(String newPicturePath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newPicturePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value) $default, {
    required TResult Function(UpdateArtworkImageSuccessful value) successful,
    required TResult Function(UpdateArtworkImageError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkImageStart value)? $default, {
    TResult? Function(UpdateArtworkImageSuccessful value)? successful,
    TResult? Function(UpdateArtworkImageError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value)? $default, {
    TResult Function(UpdateArtworkImageSuccessful value)? successful,
    TResult Function(UpdateArtworkImageError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkImageSuccessful implements UpdateArtworkImage {
  const factory UpdateArtworkImageSuccessful(final String newPicturePath) = _$UpdateArtworkImageSuccessfulImpl;

  String get newPicturePath;
  @JsonKey(ignore: true)
  _$$UpdateArtworkImageSuccessfulImplCopyWith<_$UpdateArtworkImageSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkImageErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkImageErrorImplCopyWith(
          _$UpdateArtworkImageErrorImpl value, $Res Function(_$UpdateArtworkImageErrorImpl) then) =
      __$$UpdateArtworkImageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkImageErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkImageCopyWithImpl<$Res, _$UpdateArtworkImageErrorImpl>
    implements _$$UpdateArtworkImageErrorImplCopyWith<$Res> {
  __$$UpdateArtworkImageErrorImplCopyWithImpl(
      _$UpdateArtworkImageErrorImpl _value, $Res Function(_$UpdateArtworkImageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkImageErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkImageErrorImpl implements UpdateArtworkImageError {
  const _$UpdateArtworkImageErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkImage.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkImageErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkImageErrorImplCopyWith<_$UpdateArtworkImageErrorImpl> get copyWith =>
      __$$UpdateArtworkImageErrorImplCopyWithImpl<_$UpdateArtworkImageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl) $default, {
    required TResult Function(String newPicturePath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult? Function(String newPicturePath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artworkId, String artworkTitle, String oldPictureUrl)? $default, {
    TResult Function(String newPicturePath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value) $default, {
    required TResult Function(UpdateArtworkImageSuccessful value) successful,
    required TResult Function(UpdateArtworkImageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkImageStart value)? $default, {
    TResult? Function(UpdateArtworkImageSuccessful value)? successful,
    TResult? Function(UpdateArtworkImageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkImageStart value)? $default, {
    TResult Function(UpdateArtworkImageSuccessful value)? successful,
    TResult Function(UpdateArtworkImageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkImageError implements UpdateArtworkImage, ErrorAction {
  const factory UpdateArtworkImageError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkImageErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkImageErrorImplCopyWith<_$UpdateArtworkImageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
