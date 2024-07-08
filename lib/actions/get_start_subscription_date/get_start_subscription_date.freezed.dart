// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_start_subscription_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetStartSubscriptionDate {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime startSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime startSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime startSubscriptionDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value) $default, {
    required TResult Function(GetStartSubscriptionDateSuccessful value) successful,
    required TResult Function(GetStartSubscriptionDateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetStartSubscriptionDateStart value)? $default, {
    TResult? Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetStartSubscriptionDateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value)? $default, {
    TResult Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult Function(GetStartSubscriptionDateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStartSubscriptionDateCopyWith<$Res> {
  factory $GetStartSubscriptionDateCopyWith(
          GetStartSubscriptionDate value, $Res Function(GetStartSubscriptionDate) then) =
      _$GetStartSubscriptionDateCopyWithImpl<$Res, GetStartSubscriptionDate>;
}

/// @nodoc
class _$GetStartSubscriptionDateCopyWithImpl<$Res, $Val extends GetStartSubscriptionDate>
    implements $GetStartSubscriptionDateCopyWith<$Res> {
  _$GetStartSubscriptionDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStartSubscriptionDateStartImplCopyWith<$Res> {
  factory _$$GetStartSubscriptionDateStartImplCopyWith(
          _$GetStartSubscriptionDateStartImpl value, $Res Function(_$GetStartSubscriptionDateStartImpl) then) =
      __$$GetStartSubscriptionDateStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetStartSubscriptionDateStartImplCopyWithImpl<$Res>
    extends _$GetStartSubscriptionDateCopyWithImpl<$Res, _$GetStartSubscriptionDateStartImpl>
    implements _$$GetStartSubscriptionDateStartImplCopyWith<$Res> {
  __$$GetStartSubscriptionDateStartImplCopyWithImpl(
      _$GetStartSubscriptionDateStartImpl _value, $Res Function(_$GetStartSubscriptionDateStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetStartSubscriptionDateStartImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStartSubscriptionDateStartImpl implements GetStartSubscriptionDateStart {
  const _$GetStartSubscriptionDateStartImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'GetStartSubscriptionDate(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStartSubscriptionDateStartImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStartSubscriptionDateStartImplCopyWith<_$GetStartSubscriptionDateStartImpl> get copyWith =>
      __$$GetStartSubscriptionDateStartImplCopyWithImpl<_$GetStartSubscriptionDateStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime startSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime startSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime startSubscriptionDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value) $default, {
    required TResult Function(GetStartSubscriptionDateSuccessful value) successful,
    required TResult Function(GetStartSubscriptionDateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetStartSubscriptionDateStart value)? $default, {
    TResult? Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetStartSubscriptionDateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value)? $default, {
    TResult Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult Function(GetStartSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetStartSubscriptionDateStart implements GetStartSubscriptionDate {
  const factory GetStartSubscriptionDateStart({required final String userId}) = _$GetStartSubscriptionDateStartImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetStartSubscriptionDateStartImplCopyWith<_$GetStartSubscriptionDateStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStartSubscriptionDateSuccessfulImplCopyWith<$Res> {
  factory _$$GetStartSubscriptionDateSuccessfulImplCopyWith(_$GetStartSubscriptionDateSuccessfulImpl value,
          $Res Function(_$GetStartSubscriptionDateSuccessfulImpl) then) =
      __$$GetStartSubscriptionDateSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startSubscriptionDate});
}

/// @nodoc
class __$$GetStartSubscriptionDateSuccessfulImplCopyWithImpl<$Res>
    extends _$GetStartSubscriptionDateCopyWithImpl<$Res, _$GetStartSubscriptionDateSuccessfulImpl>
    implements _$$GetStartSubscriptionDateSuccessfulImplCopyWith<$Res> {
  __$$GetStartSubscriptionDateSuccessfulImplCopyWithImpl(
      _$GetStartSubscriptionDateSuccessfulImpl _value, $Res Function(_$GetStartSubscriptionDateSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startSubscriptionDate = null,
  }) {
    return _then(_$GetStartSubscriptionDateSuccessfulImpl(
      null == startSubscriptionDate
          ? _value.startSubscriptionDate
          : startSubscriptionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetStartSubscriptionDateSuccessfulImpl implements GetStartSubscriptionDateSuccessful {
  const _$GetStartSubscriptionDateSuccessfulImpl(this.startSubscriptionDate);

  @override
  final DateTime startSubscriptionDate;

  @override
  String toString() {
    return 'GetStartSubscriptionDate.successful(startSubscriptionDate: $startSubscriptionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStartSubscriptionDateSuccessfulImpl &&
            (identical(other.startSubscriptionDate, startSubscriptionDate) ||
                other.startSubscriptionDate == startSubscriptionDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startSubscriptionDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStartSubscriptionDateSuccessfulImplCopyWith<_$GetStartSubscriptionDateSuccessfulImpl> get copyWith =>
      __$$GetStartSubscriptionDateSuccessfulImplCopyWithImpl<_$GetStartSubscriptionDateSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime startSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(startSubscriptionDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime startSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(startSubscriptionDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime startSubscriptionDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(startSubscriptionDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value) $default, {
    required TResult Function(GetStartSubscriptionDateSuccessful value) successful,
    required TResult Function(GetStartSubscriptionDateError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetStartSubscriptionDateStart value)? $default, {
    TResult? Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetStartSubscriptionDateError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value)? $default, {
    TResult Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult Function(GetStartSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetStartSubscriptionDateSuccessful implements GetStartSubscriptionDate {
  const factory GetStartSubscriptionDateSuccessful(final DateTime startSubscriptionDate) =
      _$GetStartSubscriptionDateSuccessfulImpl;

  DateTime get startSubscriptionDate;
  @JsonKey(ignore: true)
  _$$GetStartSubscriptionDateSuccessfulImplCopyWith<_$GetStartSubscriptionDateSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStartSubscriptionDateErrorImplCopyWith<$Res> {
  factory _$$GetStartSubscriptionDateErrorImplCopyWith(
          _$GetStartSubscriptionDateErrorImpl value, $Res Function(_$GetStartSubscriptionDateErrorImpl) then) =
      __$$GetStartSubscriptionDateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetStartSubscriptionDateErrorImplCopyWithImpl<$Res>
    extends _$GetStartSubscriptionDateCopyWithImpl<$Res, _$GetStartSubscriptionDateErrorImpl>
    implements _$$GetStartSubscriptionDateErrorImplCopyWith<$Res> {
  __$$GetStartSubscriptionDateErrorImplCopyWithImpl(
      _$GetStartSubscriptionDateErrorImpl _value, $Res Function(_$GetStartSubscriptionDateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetStartSubscriptionDateErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetStartSubscriptionDateErrorImpl implements GetStartSubscriptionDateError {
  const _$GetStartSubscriptionDateErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetStartSubscriptionDate.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStartSubscriptionDateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStartSubscriptionDateErrorImplCopyWith<_$GetStartSubscriptionDateErrorImpl> get copyWith =>
      __$$GetStartSubscriptionDateErrorImplCopyWithImpl<_$GetStartSubscriptionDateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime startSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime startSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime startSubscriptionDate)? successful,
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
    TResult Function(GetStartSubscriptionDateStart value) $default, {
    required TResult Function(GetStartSubscriptionDateSuccessful value) successful,
    required TResult Function(GetStartSubscriptionDateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetStartSubscriptionDateStart value)? $default, {
    TResult? Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetStartSubscriptionDateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetStartSubscriptionDateStart value)? $default, {
    TResult Function(GetStartSubscriptionDateSuccessful value)? successful,
    TResult Function(GetStartSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetStartSubscriptionDateError implements GetStartSubscriptionDate, ErrorAction {
  const factory GetStartSubscriptionDateError(final Object error, final StackTrace stackTrace) =
      _$GetStartSubscriptionDateErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetStartSubscriptionDateErrorImplCopyWith<_$GetStartSubscriptionDateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
