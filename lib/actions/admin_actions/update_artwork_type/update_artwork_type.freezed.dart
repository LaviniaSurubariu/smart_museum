// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newType, String artworkId) $default, {
    required TResult Function(String newType) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newType, String artworkId)? $default, {
    TResult? Function(String newType)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newType, String artworkId)? $default, {
    TResult Function(String newType)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value) $default, {
    required TResult Function(UpdateArtworkTypeSuccessful value) successful,
    required TResult Function(UpdateArtworkTypeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTypeStart value)? $default, {
    TResult? Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult? Function(UpdateArtworkTypeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value)? $default, {
    TResult Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult Function(UpdateArtworkTypeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkTypeCopyWith<$Res> {
  factory $UpdateArtworkTypeCopyWith(UpdateArtworkType value, $Res Function(UpdateArtworkType) then) =
      _$UpdateArtworkTypeCopyWithImpl<$Res, UpdateArtworkType>;
}

/// @nodoc
class _$UpdateArtworkTypeCopyWithImpl<$Res, $Val extends UpdateArtworkType>
    implements $UpdateArtworkTypeCopyWith<$Res> {
  _$UpdateArtworkTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkTypeStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkTypeStartImplCopyWith(
          _$UpdateArtworkTypeStartImpl value, $Res Function(_$UpdateArtworkTypeStartImpl) then) =
      __$$UpdateArtworkTypeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newType, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkTypeStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTypeCopyWithImpl<$Res, _$UpdateArtworkTypeStartImpl>
    implements _$$UpdateArtworkTypeStartImplCopyWith<$Res> {
  __$$UpdateArtworkTypeStartImplCopyWithImpl(
      _$UpdateArtworkTypeStartImpl _value, $Res Function(_$UpdateArtworkTypeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newType = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkTypeStartImpl(
      newType: null == newType
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTypeStartImpl implements UpdateArtworkTypeStart {
  const _$UpdateArtworkTypeStartImpl({required this.newType, required this.artworkId});

  @override
  final String newType;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkType(newType: $newType, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTypeStartImpl &&
            (identical(other.newType, newType) || other.newType == newType) &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newType, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkTypeStartImplCopyWith<_$UpdateArtworkTypeStartImpl> get copyWith =>
      __$$UpdateArtworkTypeStartImplCopyWithImpl<_$UpdateArtworkTypeStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newType, String artworkId) $default, {
    required TResult Function(String newType) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newType, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newType, String artworkId)? $default, {
    TResult? Function(String newType)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newType, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newType, String artworkId)? $default, {
    TResult Function(String newType)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newType, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value) $default, {
    required TResult Function(UpdateArtworkTypeSuccessful value) successful,
    required TResult Function(UpdateArtworkTypeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTypeStart value)? $default, {
    TResult? Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult? Function(UpdateArtworkTypeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value)? $default, {
    TResult Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult Function(UpdateArtworkTypeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTypeStart implements UpdateArtworkType {
  const factory UpdateArtworkTypeStart({required final String newType, required final String artworkId}) =
      _$UpdateArtworkTypeStartImpl;

  String get newType;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTypeStartImplCopyWith<_$UpdateArtworkTypeStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkTypeSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkTypeSuccessfulImplCopyWith(
          _$UpdateArtworkTypeSuccessfulImpl value, $Res Function(_$UpdateArtworkTypeSuccessfulImpl) then) =
      __$$UpdateArtworkTypeSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newType});
}

/// @nodoc
class __$$UpdateArtworkTypeSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTypeCopyWithImpl<$Res, _$UpdateArtworkTypeSuccessfulImpl>
    implements _$$UpdateArtworkTypeSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkTypeSuccessfulImplCopyWithImpl(
      _$UpdateArtworkTypeSuccessfulImpl _value, $Res Function(_$UpdateArtworkTypeSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newType = null,
  }) {
    return _then(_$UpdateArtworkTypeSuccessfulImpl(
      null == newType
          ? _value.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTypeSuccessfulImpl implements UpdateArtworkTypeSuccessful {
  const _$UpdateArtworkTypeSuccessfulImpl(this.newType);

  @override
  final String newType;

  @override
  String toString() {
    return 'UpdateArtworkType.successful(newType: $newType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTypeSuccessfulImpl &&
            (identical(other.newType, newType) || other.newType == newType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkTypeSuccessfulImplCopyWith<_$UpdateArtworkTypeSuccessfulImpl> get copyWith =>
      __$$UpdateArtworkTypeSuccessfulImplCopyWithImpl<_$UpdateArtworkTypeSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newType, String artworkId) $default, {
    required TResult Function(String newType) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newType, String artworkId)? $default, {
    TResult? Function(String newType)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newType, String artworkId)? $default, {
    TResult Function(String newType)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value) $default, {
    required TResult Function(UpdateArtworkTypeSuccessful value) successful,
    required TResult Function(UpdateArtworkTypeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTypeStart value)? $default, {
    TResult? Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult? Function(UpdateArtworkTypeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value)? $default, {
    TResult Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult Function(UpdateArtworkTypeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTypeSuccessful implements UpdateArtworkType {
  const factory UpdateArtworkTypeSuccessful(final String newType) = _$UpdateArtworkTypeSuccessfulImpl;

  String get newType;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTypeSuccessfulImplCopyWith<_$UpdateArtworkTypeSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkTypeErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkTypeErrorImplCopyWith(
          _$UpdateArtworkTypeErrorImpl value, $Res Function(_$UpdateArtworkTypeErrorImpl) then) =
      __$$UpdateArtworkTypeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkTypeErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTypeCopyWithImpl<$Res, _$UpdateArtworkTypeErrorImpl>
    implements _$$UpdateArtworkTypeErrorImplCopyWith<$Res> {
  __$$UpdateArtworkTypeErrorImplCopyWithImpl(
      _$UpdateArtworkTypeErrorImpl _value, $Res Function(_$UpdateArtworkTypeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkTypeErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTypeErrorImpl implements UpdateArtworkTypeError {
  const _$UpdateArtworkTypeErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkType.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTypeErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkTypeErrorImplCopyWith<_$UpdateArtworkTypeErrorImpl> get copyWith =>
      __$$UpdateArtworkTypeErrorImplCopyWithImpl<_$UpdateArtworkTypeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newType, String artworkId) $default, {
    required TResult Function(String newType) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newType, String artworkId)? $default, {
    TResult? Function(String newType)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newType, String artworkId)? $default, {
    TResult Function(String newType)? successful,
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
    TResult Function(UpdateArtworkTypeStart value) $default, {
    required TResult Function(UpdateArtworkTypeSuccessful value) successful,
    required TResult Function(UpdateArtworkTypeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTypeStart value)? $default, {
    TResult? Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult? Function(UpdateArtworkTypeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTypeStart value)? $default, {
    TResult Function(UpdateArtworkTypeSuccessful value)? successful,
    TResult Function(UpdateArtworkTypeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTypeError implements UpdateArtworkType, ErrorAction {
  const factory UpdateArtworkTypeError(final Object error, final StackTrace stackTrace) = _$UpdateArtworkTypeErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTypeErrorImplCopyWith<_$UpdateArtworkTypeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
