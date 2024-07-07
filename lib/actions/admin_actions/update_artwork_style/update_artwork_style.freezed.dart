// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkStyle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId) $default, {
    required TResult Function(String newStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newStyle, String artworkId)? $default, {
    TResult? Function(String newStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId)? $default, {
    TResult Function(String newStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value) $default, {
    required TResult Function(UpdateArtworkStyleSuccessful value) successful,
    required TResult Function(UpdateArtworkStyleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStyleStart value)? $default, {
    TResult? Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult? Function(UpdateArtworkStyleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value)? $default, {
    TResult Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult Function(UpdateArtworkStyleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkStyleCopyWith<$Res> {
  factory $UpdateArtworkStyleCopyWith(UpdateArtworkStyle value, $Res Function(UpdateArtworkStyle) then) =
      _$UpdateArtworkStyleCopyWithImpl<$Res, UpdateArtworkStyle>;
}

/// @nodoc
class _$UpdateArtworkStyleCopyWithImpl<$Res, $Val extends UpdateArtworkStyle>
    implements $UpdateArtworkStyleCopyWith<$Res> {
  _$UpdateArtworkStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkStyleStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkStyleStartImplCopyWith(
          _$UpdateArtworkStyleStartImpl value, $Res Function(_$UpdateArtworkStyleStartImpl) then) =
      __$$UpdateArtworkStyleStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newStyle, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkStyleStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStyleCopyWithImpl<$Res, _$UpdateArtworkStyleStartImpl>
    implements _$$UpdateArtworkStyleStartImplCopyWith<$Res> {
  __$$UpdateArtworkStyleStartImplCopyWithImpl(
      _$UpdateArtworkStyleStartImpl _value, $Res Function(_$UpdateArtworkStyleStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStyle = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkStyleStartImpl(
      newStyle: null == newStyle
          ? _value.newStyle
          : newStyle // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStyleStartImpl implements UpdateArtworkStyleStart {
  const _$UpdateArtworkStyleStartImpl({required this.newStyle, required this.artworkId});

  @override
  final String newStyle;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkStyle(newStyle: $newStyle, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStyleStartImpl &&
            (identical(other.newStyle, newStyle) || other.newStyle == newStyle) &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStyle, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkStyleStartImplCopyWith<_$UpdateArtworkStyleStartImpl> get copyWith =>
      __$$UpdateArtworkStyleStartImplCopyWithImpl<_$UpdateArtworkStyleStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId) $default, {
    required TResult Function(String newStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newStyle, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newStyle, String artworkId)? $default, {
    TResult? Function(String newStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newStyle, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId)? $default, {
    TResult Function(String newStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newStyle, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value) $default, {
    required TResult Function(UpdateArtworkStyleSuccessful value) successful,
    required TResult Function(UpdateArtworkStyleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStyleStart value)? $default, {
    TResult? Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult? Function(UpdateArtworkStyleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value)? $default, {
    TResult Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult Function(UpdateArtworkStyleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStyleStart implements UpdateArtworkStyle {
  const factory UpdateArtworkStyleStart({required final String newStyle, required final String artworkId}) =
      _$UpdateArtworkStyleStartImpl;

  String get newStyle;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStyleStartImplCopyWith<_$UpdateArtworkStyleStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkStyleSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkStyleSuccessfulImplCopyWith(
          _$UpdateArtworkStyleSuccessfulImpl value, $Res Function(_$UpdateArtworkStyleSuccessfulImpl) then) =
      __$$UpdateArtworkStyleSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newStyle});
}

/// @nodoc
class __$$UpdateArtworkStyleSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStyleCopyWithImpl<$Res, _$UpdateArtworkStyleSuccessfulImpl>
    implements _$$UpdateArtworkStyleSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkStyleSuccessfulImplCopyWithImpl(
      _$UpdateArtworkStyleSuccessfulImpl _value, $Res Function(_$UpdateArtworkStyleSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStyle = null,
  }) {
    return _then(_$UpdateArtworkStyleSuccessfulImpl(
      null == newStyle
          ? _value.newStyle
          : newStyle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStyleSuccessfulImpl implements UpdateArtworkStyleSuccessful {
  const _$UpdateArtworkStyleSuccessfulImpl(this.newStyle);

  @override
  final String newStyle;

  @override
  String toString() {
    return 'UpdateArtworkStyle.successful(newStyle: $newStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStyleSuccessfulImpl &&
            (identical(other.newStyle, newStyle) || other.newStyle == newStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkStyleSuccessfulImplCopyWith<_$UpdateArtworkStyleSuccessfulImpl> get copyWith =>
      __$$UpdateArtworkStyleSuccessfulImplCopyWithImpl<_$UpdateArtworkStyleSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId) $default, {
    required TResult Function(String newStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newStyle, String artworkId)? $default, {
    TResult? Function(String newStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId)? $default, {
    TResult Function(String newStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value) $default, {
    required TResult Function(UpdateArtworkStyleSuccessful value) successful,
    required TResult Function(UpdateArtworkStyleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStyleStart value)? $default, {
    TResult? Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult? Function(UpdateArtworkStyleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value)? $default, {
    TResult Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult Function(UpdateArtworkStyleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStyleSuccessful implements UpdateArtworkStyle {
  const factory UpdateArtworkStyleSuccessful(final String newStyle) = _$UpdateArtworkStyleSuccessfulImpl;

  String get newStyle;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStyleSuccessfulImplCopyWith<_$UpdateArtworkStyleSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkStyleErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkStyleErrorImplCopyWith(
          _$UpdateArtworkStyleErrorImpl value, $Res Function(_$UpdateArtworkStyleErrorImpl) then) =
      __$$UpdateArtworkStyleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkStyleErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStyleCopyWithImpl<$Res, _$UpdateArtworkStyleErrorImpl>
    implements _$$UpdateArtworkStyleErrorImplCopyWith<$Res> {
  __$$UpdateArtworkStyleErrorImplCopyWithImpl(
      _$UpdateArtworkStyleErrorImpl _value, $Res Function(_$UpdateArtworkStyleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkStyleErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStyleErrorImpl implements UpdateArtworkStyleError {
  const _$UpdateArtworkStyleErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkStyle.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStyleErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkStyleErrorImplCopyWith<_$UpdateArtworkStyleErrorImpl> get copyWith =>
      __$$UpdateArtworkStyleErrorImplCopyWithImpl<_$UpdateArtworkStyleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId) $default, {
    required TResult Function(String newStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newStyle, String artworkId)? $default, {
    TResult? Function(String newStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newStyle, String artworkId)? $default, {
    TResult Function(String newStyle)? successful,
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
    TResult Function(UpdateArtworkStyleStart value) $default, {
    required TResult Function(UpdateArtworkStyleSuccessful value) successful,
    required TResult Function(UpdateArtworkStyleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStyleStart value)? $default, {
    TResult? Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult? Function(UpdateArtworkStyleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStyleStart value)? $default, {
    TResult Function(UpdateArtworkStyleSuccessful value)? successful,
    TResult Function(UpdateArtworkStyleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStyleError implements UpdateArtworkStyle, ErrorAction {
  const factory UpdateArtworkStyleError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkStyleErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStyleErrorImplCopyWith<_$UpdateArtworkStyleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
