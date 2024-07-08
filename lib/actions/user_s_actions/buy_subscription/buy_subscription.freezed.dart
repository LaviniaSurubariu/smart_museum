// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuySubscription {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String duration, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String duration, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String duration, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value) $default, {
    required TResult Function(BuySubscriptionSuccessful value) successful,
    required TResult Function(BuySubscriptionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BuySubscriptionStart value)? $default, {
    TResult? Function(BuySubscriptionSuccessful value)? successful,
    TResult? Function(BuySubscriptionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value)? $default, {
    TResult Function(BuySubscriptionSuccessful value)? successful,
    TResult Function(BuySubscriptionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuySubscriptionCopyWith<$Res> {
  factory $BuySubscriptionCopyWith(BuySubscription value, $Res Function(BuySubscription) then) =
      _$BuySubscriptionCopyWithImpl<$Res, BuySubscription>;
}

/// @nodoc
class _$BuySubscriptionCopyWithImpl<$Res, $Val extends BuySubscription> implements $BuySubscriptionCopyWith<$Res> {
  _$BuySubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BuySubscriptionStartImplCopyWith<$Res> {
  factory _$$BuySubscriptionStartImplCopyWith(
          _$BuySubscriptionStartImpl value, $Res Function(_$BuySubscriptionStartImpl) then) =
      __$$BuySubscriptionStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String duration, ActionResult result});
}

/// @nodoc
class __$$BuySubscriptionStartImplCopyWithImpl<$Res>
    extends _$BuySubscriptionCopyWithImpl<$Res, _$BuySubscriptionStartImpl>
    implements _$$BuySubscriptionStartImplCopyWith<$Res> {
  __$$BuySubscriptionStartImplCopyWithImpl(
      _$BuySubscriptionStartImpl _value, $Res Function(_$BuySubscriptionStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? result = null,
  }) {
    return _then(_$BuySubscriptionStartImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$BuySubscriptionStartImpl implements BuySubscriptionStart {
  const _$BuySubscriptionStartImpl({required this.duration, required this.result});

  @override
  final String duration;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'BuySubscription(duration: $duration, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuySubscriptionStartImpl &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuySubscriptionStartImplCopyWith<_$BuySubscriptionStartImpl> get copyWith =>
      __$$BuySubscriptionStartImplCopyWithImpl<_$BuySubscriptionStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String duration, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(duration, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String duration, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(duration, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String duration, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(duration, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value) $default, {
    required TResult Function(BuySubscriptionSuccessful value) successful,
    required TResult Function(BuySubscriptionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BuySubscriptionStart value)? $default, {
    TResult? Function(BuySubscriptionSuccessful value)? successful,
    TResult? Function(BuySubscriptionError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value)? $default, {
    TResult Function(BuySubscriptionSuccessful value)? successful,
    TResult Function(BuySubscriptionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class BuySubscriptionStart implements BuySubscription {
  const factory BuySubscriptionStart({required final String duration, required final ActionResult result}) =
      _$BuySubscriptionStartImpl;

  String get duration;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$BuySubscriptionStartImplCopyWith<_$BuySubscriptionStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuySubscriptionSuccessfulImplCopyWith<$Res> {
  factory _$$BuySubscriptionSuccessfulImplCopyWith(
          _$BuySubscriptionSuccessfulImpl value, $Res Function(_$BuySubscriptionSuccessfulImpl) then) =
      __$$BuySubscriptionSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$BuySubscriptionSuccessfulImplCopyWithImpl<$Res>
    extends _$BuySubscriptionCopyWithImpl<$Res, _$BuySubscriptionSuccessfulImpl>
    implements _$$BuySubscriptionSuccessfulImplCopyWith<$Res> {
  __$$BuySubscriptionSuccessfulImplCopyWithImpl(
      _$BuySubscriptionSuccessfulImpl _value, $Res Function(_$BuySubscriptionSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$BuySubscriptionSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$BuySubscriptionSuccessfulImpl implements BuySubscriptionSuccessful {
  const _$BuySubscriptionSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'BuySubscription.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuySubscriptionSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuySubscriptionSuccessfulImplCopyWith<_$BuySubscriptionSuccessfulImpl> get copyWith =>
      __$$BuySubscriptionSuccessfulImplCopyWithImpl<_$BuySubscriptionSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String duration, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String duration, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String duration, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value) $default, {
    required TResult Function(BuySubscriptionSuccessful value) successful,
    required TResult Function(BuySubscriptionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BuySubscriptionStart value)? $default, {
    TResult? Function(BuySubscriptionSuccessful value)? successful,
    TResult? Function(BuySubscriptionError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value)? $default, {
    TResult Function(BuySubscriptionSuccessful value)? successful,
    TResult Function(BuySubscriptionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class BuySubscriptionSuccessful implements BuySubscription {
  const factory BuySubscriptionSuccessful(final AppUser user) = _$BuySubscriptionSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$BuySubscriptionSuccessfulImplCopyWith<_$BuySubscriptionSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuySubscriptionErrorImplCopyWith<$Res> {
  factory _$$BuySubscriptionErrorImplCopyWith(
          _$BuySubscriptionErrorImpl value, $Res Function(_$BuySubscriptionErrorImpl) then) =
      __$$BuySubscriptionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$BuySubscriptionErrorImplCopyWithImpl<$Res>
    extends _$BuySubscriptionCopyWithImpl<$Res, _$BuySubscriptionErrorImpl>
    implements _$$BuySubscriptionErrorImplCopyWith<$Res> {
  __$$BuySubscriptionErrorImplCopyWithImpl(
      _$BuySubscriptionErrorImpl _value, $Res Function(_$BuySubscriptionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$BuySubscriptionErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$BuySubscriptionErrorImpl implements BuySubscriptionError {
  const _$BuySubscriptionErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'BuySubscription.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuySubscriptionErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuySubscriptionErrorImplCopyWith<_$BuySubscriptionErrorImpl> get copyWith =>
      __$$BuySubscriptionErrorImplCopyWithImpl<_$BuySubscriptionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String duration, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String duration, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String duration, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
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
    TResult Function(BuySubscriptionStart value) $default, {
    required TResult Function(BuySubscriptionSuccessful value) successful,
    required TResult Function(BuySubscriptionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BuySubscriptionStart value)? $default, {
    TResult? Function(BuySubscriptionSuccessful value)? successful,
    TResult? Function(BuySubscriptionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BuySubscriptionStart value)? $default, {
    TResult Function(BuySubscriptionSuccessful value)? successful,
    TResult Function(BuySubscriptionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BuySubscriptionError implements BuySubscription, ErrorAction {
  const factory BuySubscriptionError(final Object error, final StackTrace stackTrace) = _$BuySubscriptionErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$BuySubscriptionErrorImplCopyWith<_$BuySubscriptionErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
