// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkArtist {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId) $default, {
    required TResult Function(ArtistForFetch artist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult? Function(ArtistForFetch artist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult Function(ArtistForFetch artist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value) $default, {
    required TResult Function(UpdateArtworkArtistSuccessful value) successful,
    required TResult Function(UpdateArtworkArtistError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkArtistStart value)? $default, {
    TResult? Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult? Function(UpdateArtworkArtistError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value)? $default, {
    TResult Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult Function(UpdateArtworkArtistError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkArtistCopyWith<$Res> {
  factory $UpdateArtworkArtistCopyWith(
          UpdateArtworkArtist value, $Res Function(UpdateArtworkArtist) then) =
      _$UpdateArtworkArtistCopyWithImpl<$Res, UpdateArtworkArtist>;
}

/// @nodoc
class _$UpdateArtworkArtistCopyWithImpl<$Res, $Val extends UpdateArtworkArtist>
    implements $UpdateArtworkArtistCopyWith<$Res> {
  _$UpdateArtworkArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkArtistStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkArtistStartImplCopyWith(
          _$UpdateArtworkArtistStartImpl value,
          $Res Function(_$UpdateArtworkArtistStartImpl) then) =
      __$$UpdateArtworkArtistStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistForFetch artist, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkArtistStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkArtistCopyWithImpl<$Res,
        _$UpdateArtworkArtistStartImpl>
    implements _$$UpdateArtworkArtistStartImplCopyWith<$Res> {
  __$$UpdateArtworkArtistStartImplCopyWithImpl(
      _$UpdateArtworkArtistStartImpl _value,
      $Res Function(_$UpdateArtworkArtistStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkArtistStartImpl(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistForFetch,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkArtistStartImpl implements UpdateArtworkArtistStart {
  const _$UpdateArtworkArtistStartImpl(
      {required this.artist, required this.artworkId});

  @override
  final ArtistForFetch artist;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkArtist(artist: $artist, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkArtistStartImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkArtistStartImplCopyWith<_$UpdateArtworkArtistStartImpl>
      get copyWith => __$$UpdateArtworkArtistStartImplCopyWithImpl<
          _$UpdateArtworkArtistStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId) $default, {
    required TResult Function(ArtistForFetch artist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(artist, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult? Function(ArtistForFetch artist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(artist, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult Function(ArtistForFetch artist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(artist, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value) $default, {
    required TResult Function(UpdateArtworkArtistSuccessful value) successful,
    required TResult Function(UpdateArtworkArtistError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkArtistStart value)? $default, {
    TResult? Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult? Function(UpdateArtworkArtistError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value)? $default, {
    TResult Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult Function(UpdateArtworkArtistError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkArtistStart implements UpdateArtworkArtist {
  const factory UpdateArtworkArtistStart(
      {required final ArtistForFetch artist,
      required final String artworkId}) = _$UpdateArtworkArtistStartImpl;

  ArtistForFetch get artist;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkArtistStartImplCopyWith<_$UpdateArtworkArtistStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkArtistSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkArtistSuccessfulImplCopyWith(
          _$UpdateArtworkArtistSuccessfulImpl value,
          $Res Function(_$UpdateArtworkArtistSuccessfulImpl) then) =
      __$$UpdateArtworkArtistSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistForFetch artist});
}

/// @nodoc
class __$$UpdateArtworkArtistSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkArtistCopyWithImpl<$Res,
        _$UpdateArtworkArtistSuccessfulImpl>
    implements _$$UpdateArtworkArtistSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkArtistSuccessfulImplCopyWithImpl(
      _$UpdateArtworkArtistSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkArtistSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$UpdateArtworkArtistSuccessfulImpl(
      null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistForFetch,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkArtistSuccessfulImpl
    implements UpdateArtworkArtistSuccessful {
  const _$UpdateArtworkArtistSuccessfulImpl(this.artist);

  @override
  final ArtistForFetch artist;

  @override
  String toString() {
    return 'UpdateArtworkArtist.successful(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkArtistSuccessfulImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkArtistSuccessfulImplCopyWith<
          _$UpdateArtworkArtistSuccessfulImpl>
      get copyWith => __$$UpdateArtworkArtistSuccessfulImplCopyWithImpl<
          _$UpdateArtworkArtistSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId) $default, {
    required TResult Function(ArtistForFetch artist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult? Function(ArtistForFetch artist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult Function(ArtistForFetch artist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value) $default, {
    required TResult Function(UpdateArtworkArtistSuccessful value) successful,
    required TResult Function(UpdateArtworkArtistError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkArtistStart value)? $default, {
    TResult? Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult? Function(UpdateArtworkArtistError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value)? $default, {
    TResult Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult Function(UpdateArtworkArtistError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkArtistSuccessful implements UpdateArtworkArtist {
  const factory UpdateArtworkArtistSuccessful(final ArtistForFetch artist) =
      _$UpdateArtworkArtistSuccessfulImpl;

  ArtistForFetch get artist;
  @JsonKey(ignore: true)
  _$$UpdateArtworkArtistSuccessfulImplCopyWith<
          _$UpdateArtworkArtistSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkArtistErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkArtistErrorImplCopyWith(
          _$UpdateArtworkArtistErrorImpl value,
          $Res Function(_$UpdateArtworkArtistErrorImpl) then) =
      __$$UpdateArtworkArtistErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkArtistErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkArtistCopyWithImpl<$Res,
        _$UpdateArtworkArtistErrorImpl>
    implements _$$UpdateArtworkArtistErrorImplCopyWith<$Res> {
  __$$UpdateArtworkArtistErrorImplCopyWithImpl(
      _$UpdateArtworkArtistErrorImpl _value,
      $Res Function(_$UpdateArtworkArtistErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkArtistErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkArtistErrorImpl implements UpdateArtworkArtistError {
  const _$UpdateArtworkArtistErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkArtist.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkArtistErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkArtistErrorImplCopyWith<_$UpdateArtworkArtistErrorImpl>
      get copyWith => __$$UpdateArtworkArtistErrorImplCopyWithImpl<
          _$UpdateArtworkArtistErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId) $default, {
    required TResult Function(ArtistForFetch artist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult? Function(ArtistForFetch artist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ArtistForFetch artist, String artworkId)? $default, {
    TResult Function(ArtistForFetch artist)? successful,
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
    TResult Function(UpdateArtworkArtistStart value) $default, {
    required TResult Function(UpdateArtworkArtistSuccessful value) successful,
    required TResult Function(UpdateArtworkArtistError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkArtistStart value)? $default, {
    TResult? Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult? Function(UpdateArtworkArtistError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkArtistStart value)? $default, {
    TResult Function(UpdateArtworkArtistSuccessful value)? successful,
    TResult Function(UpdateArtworkArtistError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkArtistError
    implements UpdateArtworkArtist, ErrorAction {
  const factory UpdateArtworkArtistError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkArtistErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkArtistErrorImplCopyWith<_$UpdateArtworkArtistErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
