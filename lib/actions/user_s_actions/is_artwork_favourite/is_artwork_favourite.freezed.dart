// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_artwork_favourite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IsArtworkFavourite {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function(bool isFavourite) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function(bool isFavourite)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function(bool isFavourite)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value) $default, {
    required TResult Function(IsArtworkFavouriteSuccessful value) successful,
    required TResult Function(IsArtworkFavouriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(IsArtworkFavouriteStart value)? $default, {
    TResult? Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult? Function(IsArtworkFavouriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value)? $default, {
    TResult Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult Function(IsArtworkFavouriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsArtworkFavouriteCopyWith<$Res> {
  factory $IsArtworkFavouriteCopyWith(
          IsArtworkFavourite value, $Res Function(IsArtworkFavourite) then) =
      _$IsArtworkFavouriteCopyWithImpl<$Res, IsArtworkFavourite>;
}

/// @nodoc
class _$IsArtworkFavouriteCopyWithImpl<$Res, $Val extends IsArtworkFavourite>
    implements $IsArtworkFavouriteCopyWith<$Res> {
  _$IsArtworkFavouriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsArtworkFavouriteStartImplCopyWith<$Res> {
  factory _$$IsArtworkFavouriteStartImplCopyWith(
          _$IsArtworkFavouriteStartImpl value,
          $Res Function(_$IsArtworkFavouriteStartImpl) then) =
      __$$IsArtworkFavouriteStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String artworkId});
}

/// @nodoc
class __$$IsArtworkFavouriteStartImplCopyWithImpl<$Res>
    extends _$IsArtworkFavouriteCopyWithImpl<$Res,
        _$IsArtworkFavouriteStartImpl>
    implements _$$IsArtworkFavouriteStartImplCopyWith<$Res> {
  __$$IsArtworkFavouriteStartImplCopyWithImpl(
      _$IsArtworkFavouriteStartImpl _value,
      $Res Function(_$IsArtworkFavouriteStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? artworkId = null,
  }) {
    return _then(_$IsArtworkFavouriteStartImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsArtworkFavouriteStartImpl implements IsArtworkFavouriteStart {
  const _$IsArtworkFavouriteStartImpl(
      {required this.userId, required this.artworkId});

  @override
  final String userId;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'IsArtworkFavourite(userId: $userId, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsArtworkFavouriteStartImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsArtworkFavouriteStartImplCopyWith<_$IsArtworkFavouriteStartImpl>
      get copyWith => __$$IsArtworkFavouriteStartImplCopyWithImpl<
          _$IsArtworkFavouriteStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function(bool isFavourite) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function(bool isFavourite)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function(bool isFavourite)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value) $default, {
    required TResult Function(IsArtworkFavouriteSuccessful value) successful,
    required TResult Function(IsArtworkFavouriteError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(IsArtworkFavouriteStart value)? $default, {
    TResult? Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult? Function(IsArtworkFavouriteError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value)? $default, {
    TResult Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult Function(IsArtworkFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class IsArtworkFavouriteStart implements IsArtworkFavourite {
  const factory IsArtworkFavouriteStart(
      {required final String userId,
      required final String artworkId}) = _$IsArtworkFavouriteStartImpl;

  String get userId;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$IsArtworkFavouriteStartImplCopyWith<_$IsArtworkFavouriteStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsArtworkFavouriteSuccessfulImplCopyWith<$Res> {
  factory _$$IsArtworkFavouriteSuccessfulImplCopyWith(
          _$IsArtworkFavouriteSuccessfulImpl value,
          $Res Function(_$IsArtworkFavouriteSuccessfulImpl) then) =
      __$$IsArtworkFavouriteSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFavourite});
}

/// @nodoc
class __$$IsArtworkFavouriteSuccessfulImplCopyWithImpl<$Res>
    extends _$IsArtworkFavouriteCopyWithImpl<$Res,
        _$IsArtworkFavouriteSuccessfulImpl>
    implements _$$IsArtworkFavouriteSuccessfulImplCopyWith<$Res> {
  __$$IsArtworkFavouriteSuccessfulImplCopyWithImpl(
      _$IsArtworkFavouriteSuccessfulImpl _value,
      $Res Function(_$IsArtworkFavouriteSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
  }) {
    return _then(_$IsArtworkFavouriteSuccessfulImpl(
      null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsArtworkFavouriteSuccessfulImpl
    implements IsArtworkFavouriteSuccessful {
  const _$IsArtworkFavouriteSuccessfulImpl(this.isFavourite);

  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'IsArtworkFavourite.successful(isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsArtworkFavouriteSuccessfulImpl &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsArtworkFavouriteSuccessfulImplCopyWith<
          _$IsArtworkFavouriteSuccessfulImpl>
      get copyWith => __$$IsArtworkFavouriteSuccessfulImplCopyWithImpl<
          _$IsArtworkFavouriteSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function(bool isFavourite) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(isFavourite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function(bool isFavourite)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(isFavourite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function(bool isFavourite)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(isFavourite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value) $default, {
    required TResult Function(IsArtworkFavouriteSuccessful value) successful,
    required TResult Function(IsArtworkFavouriteError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(IsArtworkFavouriteStart value)? $default, {
    TResult? Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult? Function(IsArtworkFavouriteError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value)? $default, {
    TResult Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult Function(IsArtworkFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class IsArtworkFavouriteSuccessful implements IsArtworkFavourite {
  const factory IsArtworkFavouriteSuccessful(final bool isFavourite) =
      _$IsArtworkFavouriteSuccessfulImpl;

  bool get isFavourite;
  @JsonKey(ignore: true)
  _$$IsArtworkFavouriteSuccessfulImplCopyWith<
          _$IsArtworkFavouriteSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsArtworkFavouriteErrorImplCopyWith<$Res> {
  factory _$$IsArtworkFavouriteErrorImplCopyWith(
          _$IsArtworkFavouriteErrorImpl value,
          $Res Function(_$IsArtworkFavouriteErrorImpl) then) =
      __$$IsArtworkFavouriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$IsArtworkFavouriteErrorImplCopyWithImpl<$Res>
    extends _$IsArtworkFavouriteCopyWithImpl<$Res,
        _$IsArtworkFavouriteErrorImpl>
    implements _$$IsArtworkFavouriteErrorImplCopyWith<$Res> {
  __$$IsArtworkFavouriteErrorImplCopyWithImpl(
      _$IsArtworkFavouriteErrorImpl _value,
      $Res Function(_$IsArtworkFavouriteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$IsArtworkFavouriteErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$IsArtworkFavouriteErrorImpl implements IsArtworkFavouriteError {
  const _$IsArtworkFavouriteErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'IsArtworkFavourite.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsArtworkFavouriteErrorImpl &&
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
  _$$IsArtworkFavouriteErrorImplCopyWith<_$IsArtworkFavouriteErrorImpl>
      get copyWith => __$$IsArtworkFavouriteErrorImplCopyWithImpl<
          _$IsArtworkFavouriteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function(bool isFavourite) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function(bool isFavourite)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function(bool isFavourite)? successful,
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
    TResult Function(IsArtworkFavouriteStart value) $default, {
    required TResult Function(IsArtworkFavouriteSuccessful value) successful,
    required TResult Function(IsArtworkFavouriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(IsArtworkFavouriteStart value)? $default, {
    TResult? Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult? Function(IsArtworkFavouriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(IsArtworkFavouriteStart value)? $default, {
    TResult Function(IsArtworkFavouriteSuccessful value)? successful,
    TResult Function(IsArtworkFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsArtworkFavouriteError
    implements IsArtworkFavourite, ErrorAction {
  const factory IsArtworkFavouriteError(
          final Object error, final StackTrace stackTrace) =
      _$IsArtworkFavouriteErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$IsArtworkFavouriteErrorImplCopyWith<_$IsArtworkFavouriteErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
