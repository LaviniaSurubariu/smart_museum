// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_favourite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveFavourite {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value) $default, {
    required TResult Function(RemoveFavouriteSuccessful value) successful,
    required TResult Function(RemoveFavouriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveFavouriteStart value)? $default, {
    TResult? Function(RemoveFavouriteSuccessful value)? successful,
    TResult? Function(RemoveFavouriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value)? $default, {
    TResult Function(RemoveFavouriteSuccessful value)? successful,
    TResult Function(RemoveFavouriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFavouriteCopyWith<$Res> {
  factory $RemoveFavouriteCopyWith(
          RemoveFavourite value, $Res Function(RemoveFavourite) then) =
      _$RemoveFavouriteCopyWithImpl<$Res, RemoveFavourite>;
}

/// @nodoc
class _$RemoveFavouriteCopyWithImpl<$Res, $Val extends RemoveFavourite>
    implements $RemoveFavouriteCopyWith<$Res> {
  _$RemoveFavouriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoveFavouriteStartImplCopyWith<$Res> {
  factory _$$RemoveFavouriteStartImplCopyWith(_$RemoveFavouriteStartImpl value,
          $Res Function(_$RemoveFavouriteStartImpl) then) =
      __$$RemoveFavouriteStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String artworkId});
}

/// @nodoc
class __$$RemoveFavouriteStartImplCopyWithImpl<$Res>
    extends _$RemoveFavouriteCopyWithImpl<$Res, _$RemoveFavouriteStartImpl>
    implements _$$RemoveFavouriteStartImplCopyWith<$Res> {
  __$$RemoveFavouriteStartImplCopyWithImpl(_$RemoveFavouriteStartImpl _value,
      $Res Function(_$RemoveFavouriteStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? artworkId = null,
  }) {
    return _then(_$RemoveFavouriteStartImpl(
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

class _$RemoveFavouriteStartImpl implements RemoveFavouriteStart {
  const _$RemoveFavouriteStartImpl(
      {required this.userId, required this.artworkId});

  @override
  final String userId;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'RemoveFavourite(userId: $userId, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavouriteStartImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavouriteStartImplCopyWith<_$RemoveFavouriteStartImpl>
      get copyWith =>
          __$$RemoveFavouriteStartImplCopyWithImpl<_$RemoveFavouriteStartImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function()? successful,
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
    TResult Function(RemoveFavouriteStart value) $default, {
    required TResult Function(RemoveFavouriteSuccessful value) successful,
    required TResult Function(RemoveFavouriteError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveFavouriteStart value)? $default, {
    TResult? Function(RemoveFavouriteSuccessful value)? successful,
    TResult? Function(RemoveFavouriteError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value)? $default, {
    TResult Function(RemoveFavouriteSuccessful value)? successful,
    TResult Function(RemoveFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveFavouriteStart implements RemoveFavourite {
  const factory RemoveFavouriteStart(
      {required final String userId,
      required final String artworkId}) = _$RemoveFavouriteStartImpl;

  String get userId;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$RemoveFavouriteStartImplCopyWith<_$RemoveFavouriteStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavouriteSuccessfulImplCopyWith<$Res> {
  factory _$$RemoveFavouriteSuccessfulImplCopyWith(
          _$RemoveFavouriteSuccessfulImpl value,
          $Res Function(_$RemoveFavouriteSuccessfulImpl) then) =
      __$$RemoveFavouriteSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveFavouriteSuccessfulImplCopyWithImpl<$Res>
    extends _$RemoveFavouriteCopyWithImpl<$Res, _$RemoveFavouriteSuccessfulImpl>
    implements _$$RemoveFavouriteSuccessfulImplCopyWith<$Res> {
  __$$RemoveFavouriteSuccessfulImplCopyWithImpl(
      _$RemoveFavouriteSuccessfulImpl _value,
      $Res Function(_$RemoveFavouriteSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveFavouriteSuccessfulImpl implements RemoveFavouriteSuccessful {
  const _$RemoveFavouriteSuccessfulImpl();

  @override
  String toString() {
    return 'RemoveFavourite.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavouriteSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value) $default, {
    required TResult Function(RemoveFavouriteSuccessful value) successful,
    required TResult Function(RemoveFavouriteError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveFavouriteStart value)? $default, {
    TResult? Function(RemoveFavouriteSuccessful value)? successful,
    TResult? Function(RemoveFavouriteError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value)? $default, {
    TResult Function(RemoveFavouriteSuccessful value)? successful,
    TResult Function(RemoveFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveFavouriteSuccessful implements RemoveFavourite {
  const factory RemoveFavouriteSuccessful() = _$RemoveFavouriteSuccessfulImpl;
}

/// @nodoc
abstract class _$$RemoveFavouriteErrorImplCopyWith<$Res> {
  factory _$$RemoveFavouriteErrorImplCopyWith(_$RemoveFavouriteErrorImpl value,
          $Res Function(_$RemoveFavouriteErrorImpl) then) =
      __$$RemoveFavouriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RemoveFavouriteErrorImplCopyWithImpl<$Res>
    extends _$RemoveFavouriteCopyWithImpl<$Res, _$RemoveFavouriteErrorImpl>
    implements _$$RemoveFavouriteErrorImplCopyWith<$Res> {
  __$$RemoveFavouriteErrorImplCopyWithImpl(_$RemoveFavouriteErrorImpl _value,
      $Res Function(_$RemoveFavouriteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RemoveFavouriteErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RemoveFavouriteErrorImpl implements RemoveFavouriteError {
  const _$RemoveFavouriteErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RemoveFavourite.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavouriteErrorImpl &&
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
  _$$RemoveFavouriteErrorImplCopyWith<_$RemoveFavouriteErrorImpl>
      get copyWith =>
          __$$RemoveFavouriteErrorImplCopyWithImpl<_$RemoveFavouriteErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String artworkId)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId)? $default, {
    TResult Function()? successful,
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
    TResult Function(RemoveFavouriteStart value) $default, {
    required TResult Function(RemoveFavouriteSuccessful value) successful,
    required TResult Function(RemoveFavouriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveFavouriteStart value)? $default, {
    TResult? Function(RemoveFavouriteSuccessful value)? successful,
    TResult? Function(RemoveFavouriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFavouriteStart value)? $default, {
    TResult Function(RemoveFavouriteSuccessful value)? successful,
    TResult Function(RemoveFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveFavouriteError implements RemoveFavourite, ErrorAction {
  const factory RemoveFavouriteError(
          final Object error, final StackTrace stackTrace) =
      _$RemoveFavouriteErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RemoveFavouriteErrorImplCopyWith<_$RemoveFavouriteErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
