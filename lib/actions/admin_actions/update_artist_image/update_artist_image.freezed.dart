// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistImage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl) $default, {
    required TResult Function(String newPictureUrl) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult? Function(String newPictureUrl)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult Function(String newPictureUrl)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value) $default, {
    required TResult Function(UpdateArtistImageSuccessful value) successful,
    required TResult Function(UpdateArtistImageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistImageStart value)? $default, {
    TResult? Function(UpdateArtistImageSuccessful value)? successful,
    TResult? Function(UpdateArtistImageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value)? $default, {
    TResult Function(UpdateArtistImageSuccessful value)? successful,
    TResult Function(UpdateArtistImageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistImageCopyWith<$Res> {
  factory $UpdateArtistImageCopyWith(UpdateArtistImage value, $Res Function(UpdateArtistImage) then) =
      _$UpdateArtistImageCopyWithImpl<$Res, UpdateArtistImage>;
}

/// @nodoc
class _$UpdateArtistImageCopyWithImpl<$Res, $Val extends UpdateArtistImage>
    implements $UpdateArtistImageCopyWith<$Res> {
  _$UpdateArtistImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistImageStartImplCopyWith<$Res> {
  factory _$$UpdateArtistImageStartImplCopyWith(
          _$UpdateArtistImageStartImpl value, $Res Function(_$UpdateArtistImageStartImpl) then) =
      __$$UpdateArtistImageStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl});
}

/// @nodoc
class __$$UpdateArtistImageStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistImageCopyWithImpl<$Res, _$UpdateArtistImageStartImpl>
    implements _$$UpdateArtistImageStartImplCopyWith<$Res> {
  __$$UpdateArtistImageStartImplCopyWithImpl(
      _$UpdateArtistImageStartImpl _value, $Res Function(_$UpdateArtistImageStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPicturePath = null,
    Object? artistId = null,
    Object? artistFirstName = null,
    Object? oldPictureUrl = null,
  }) {
    return _then(_$UpdateArtistImageStartImpl(
      newPicturePath: null == newPicturePath
          ? _value.newPicturePath
          : newPicturePath // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      artistFirstName: null == artistFirstName
          ? _value.artistFirstName
          : artistFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      oldPictureUrl: null == oldPictureUrl
          ? _value.oldPictureUrl
          : oldPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistImageStartImpl implements UpdateArtistImageStart {
  const _$UpdateArtistImageStartImpl(
      {required this.newPicturePath,
      required this.artistId,
      required this.artistFirstName,
      required this.oldPictureUrl});

  @override
  final String newPicturePath;
  @override
  final String artistId;
  @override
  final String artistFirstName;
  @override
  final String oldPictureUrl;

  @override
  String toString() {
    return 'UpdateArtistImage(newPicturePath: $newPicturePath, artistId: $artistId, artistFirstName: $artistFirstName, oldPictureUrl: $oldPictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistImageStartImpl &&
            (identical(other.newPicturePath, newPicturePath) || other.newPicturePath == newPicturePath) &&
            (identical(other.artistId, artistId) || other.artistId == artistId) &&
            (identical(other.artistFirstName, artistFirstName) || other.artistFirstName == artistFirstName) &&
            (identical(other.oldPictureUrl, oldPictureUrl) || other.oldPictureUrl == oldPictureUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPicturePath, artistId, artistFirstName, oldPictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistImageStartImplCopyWith<_$UpdateArtistImageStartImpl> get copyWith =>
      __$$UpdateArtistImageStartImplCopyWithImpl<_$UpdateArtistImageStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl) $default, {
    required TResult Function(String newPictureUrl) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newPicturePath, artistId, artistFirstName, oldPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult? Function(String newPictureUrl)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newPicturePath, artistId, artistFirstName, oldPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult Function(String newPictureUrl)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newPicturePath, artistId, artistFirstName, oldPictureUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value) $default, {
    required TResult Function(UpdateArtistImageSuccessful value) successful,
    required TResult Function(UpdateArtistImageError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistImageStart value)? $default, {
    TResult? Function(UpdateArtistImageSuccessful value)? successful,
    TResult? Function(UpdateArtistImageError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value)? $default, {
    TResult Function(UpdateArtistImageSuccessful value)? successful,
    TResult Function(UpdateArtistImageError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistImageStart implements UpdateArtistImage {
  const factory UpdateArtistImageStart(
      {required final String newPicturePath,
      required final String artistId,
      required final String artistFirstName,
      required final String oldPictureUrl}) = _$UpdateArtistImageStartImpl;

  String get newPicturePath;
  String get artistId;
  String get artistFirstName;
  String get oldPictureUrl;
  @JsonKey(ignore: true)
  _$$UpdateArtistImageStartImplCopyWith<_$UpdateArtistImageStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistImageSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistImageSuccessfulImplCopyWith(
          _$UpdateArtistImageSuccessfulImpl value, $Res Function(_$UpdateArtistImageSuccessfulImpl) then) =
      __$$UpdateArtistImageSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPictureUrl});
}

/// @nodoc
class __$$UpdateArtistImageSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistImageCopyWithImpl<$Res, _$UpdateArtistImageSuccessfulImpl>
    implements _$$UpdateArtistImageSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistImageSuccessfulImplCopyWithImpl(
      _$UpdateArtistImageSuccessfulImpl _value, $Res Function(_$UpdateArtistImageSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPictureUrl = null,
  }) {
    return _then(_$UpdateArtistImageSuccessfulImpl(
      null == newPictureUrl
          ? _value.newPictureUrl
          : newPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistImageSuccessfulImpl implements UpdateArtistImageSuccessful {
  const _$UpdateArtistImageSuccessfulImpl(this.newPictureUrl);

  @override
  final String newPictureUrl;

  @override
  String toString() {
    return 'UpdateArtistImage.successful(newPictureUrl: $newPictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistImageSuccessfulImpl &&
            (identical(other.newPictureUrl, newPictureUrl) || other.newPictureUrl == newPictureUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistImageSuccessfulImplCopyWith<_$UpdateArtistImageSuccessfulImpl> get copyWith =>
      __$$UpdateArtistImageSuccessfulImplCopyWithImpl<_$UpdateArtistImageSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl) $default, {
    required TResult Function(String newPictureUrl) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult? Function(String newPictureUrl)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newPictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult Function(String newPictureUrl)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newPictureUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value) $default, {
    required TResult Function(UpdateArtistImageSuccessful value) successful,
    required TResult Function(UpdateArtistImageError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistImageStart value)? $default, {
    TResult? Function(UpdateArtistImageSuccessful value)? successful,
    TResult? Function(UpdateArtistImageError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value)? $default, {
    TResult Function(UpdateArtistImageSuccessful value)? successful,
    TResult Function(UpdateArtistImageError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistImageSuccessful implements UpdateArtistImage {
  const factory UpdateArtistImageSuccessful(final String newPictureUrl) = _$UpdateArtistImageSuccessfulImpl;

  String get newPictureUrl;
  @JsonKey(ignore: true)
  _$$UpdateArtistImageSuccessfulImplCopyWith<_$UpdateArtistImageSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistImageErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistImageErrorImplCopyWith(
          _$UpdateArtistImageErrorImpl value, $Res Function(_$UpdateArtistImageErrorImpl) then) =
      __$$UpdateArtistImageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistImageErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistImageCopyWithImpl<$Res, _$UpdateArtistImageErrorImpl>
    implements _$$UpdateArtistImageErrorImplCopyWith<$Res> {
  __$$UpdateArtistImageErrorImplCopyWithImpl(
      _$UpdateArtistImageErrorImpl _value, $Res Function(_$UpdateArtistImageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistImageErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistImageErrorImpl implements UpdateArtistImageError {
  const _$UpdateArtistImageErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistImage.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistImageErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistImageErrorImplCopyWith<_$UpdateArtistImageErrorImpl> get copyWith =>
      __$$UpdateArtistImageErrorImplCopyWithImpl<_$UpdateArtistImageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl) $default, {
    required TResult Function(String newPictureUrl) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult? Function(String newPictureUrl)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPicturePath, String artistId, String artistFirstName, String oldPictureUrl)? $default, {
    TResult Function(String newPictureUrl)? successful,
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
    TResult Function(UpdateArtistImageStart value) $default, {
    required TResult Function(UpdateArtistImageSuccessful value) successful,
    required TResult Function(UpdateArtistImageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistImageStart value)? $default, {
    TResult? Function(UpdateArtistImageSuccessful value)? successful,
    TResult? Function(UpdateArtistImageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistImageStart value)? $default, {
    TResult Function(UpdateArtistImageSuccessful value)? successful,
    TResult Function(UpdateArtistImageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistImageError implements UpdateArtistImage, ErrorAction {
  const factory UpdateArtistImageError(final Object error, final StackTrace stackTrace) = _$UpdateArtistImageErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistImageErrorImplCopyWith<_$UpdateArtistImageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
