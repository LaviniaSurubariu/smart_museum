// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_end_subscription_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetEndSubscriptionDate {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime endSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime endSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime endSubscriptionDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value) $default, {
    required TResult Function(GetEndSubscriptionDateSuccessful value)
        successful,
    required TResult Function(GetEndSubscriptionDateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetEndSubscriptionDateStart value)? $default, {
    TResult? Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetEndSubscriptionDateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value)? $default, {
    TResult Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult Function(GetEndSubscriptionDateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEndSubscriptionDateCopyWith<$Res> {
  factory $GetEndSubscriptionDateCopyWith(GetEndSubscriptionDate value,
          $Res Function(GetEndSubscriptionDate) then) =
      _$GetEndSubscriptionDateCopyWithImpl<$Res, GetEndSubscriptionDate>;
}

/// @nodoc
class _$GetEndSubscriptionDateCopyWithImpl<$Res,
        $Val extends GetEndSubscriptionDate>
    implements $GetEndSubscriptionDateCopyWith<$Res> {
  _$GetEndSubscriptionDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEndSubscriptionDateStartImplCopyWith<$Res> {
  factory _$$GetEndSubscriptionDateStartImplCopyWith(
          _$GetEndSubscriptionDateStartImpl value,
          $Res Function(_$GetEndSubscriptionDateStartImpl) then) =
      __$$GetEndSubscriptionDateStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetEndSubscriptionDateStartImplCopyWithImpl<$Res>
    extends _$GetEndSubscriptionDateCopyWithImpl<$Res,
        _$GetEndSubscriptionDateStartImpl>
    implements _$$GetEndSubscriptionDateStartImplCopyWith<$Res> {
  __$$GetEndSubscriptionDateStartImplCopyWithImpl(
      _$GetEndSubscriptionDateStartImpl _value,
      $Res Function(_$GetEndSubscriptionDateStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetEndSubscriptionDateStartImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEndSubscriptionDateStartImpl implements GetEndSubscriptionDateStart {
  const _$GetEndSubscriptionDateStartImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'GetEndSubscriptionDate(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEndSubscriptionDateStartImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEndSubscriptionDateStartImplCopyWith<_$GetEndSubscriptionDateStartImpl>
      get copyWith => __$$GetEndSubscriptionDateStartImplCopyWithImpl<
          _$GetEndSubscriptionDateStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime endSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime endSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime endSubscriptionDate)? successful,
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
    TResult Function(GetEndSubscriptionDateStart value) $default, {
    required TResult Function(GetEndSubscriptionDateSuccessful value)
        successful,
    required TResult Function(GetEndSubscriptionDateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetEndSubscriptionDateStart value)? $default, {
    TResult? Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetEndSubscriptionDateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value)? $default, {
    TResult Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult Function(GetEndSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetEndSubscriptionDateStart implements GetEndSubscriptionDate {
  const factory GetEndSubscriptionDateStart({required final String userId}) =
      _$GetEndSubscriptionDateStartImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetEndSubscriptionDateStartImplCopyWith<_$GetEndSubscriptionDateStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEndSubscriptionDateSuccessfulImplCopyWith<$Res> {
  factory _$$GetEndSubscriptionDateSuccessfulImplCopyWith(
          _$GetEndSubscriptionDateSuccessfulImpl value,
          $Res Function(_$GetEndSubscriptionDateSuccessfulImpl) then) =
      __$$GetEndSubscriptionDateSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime endSubscriptionDate});
}

/// @nodoc
class __$$GetEndSubscriptionDateSuccessfulImplCopyWithImpl<$Res>
    extends _$GetEndSubscriptionDateCopyWithImpl<$Res,
        _$GetEndSubscriptionDateSuccessfulImpl>
    implements _$$GetEndSubscriptionDateSuccessfulImplCopyWith<$Res> {
  __$$GetEndSubscriptionDateSuccessfulImplCopyWithImpl(
      _$GetEndSubscriptionDateSuccessfulImpl _value,
      $Res Function(_$GetEndSubscriptionDateSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endSubscriptionDate = null,
  }) {
    return _then(_$GetEndSubscriptionDateSuccessfulImpl(
      null == endSubscriptionDate
          ? _value.endSubscriptionDate
          : endSubscriptionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetEndSubscriptionDateSuccessfulImpl
    implements GetEndSubscriptionDateSuccessful {
  const _$GetEndSubscriptionDateSuccessfulImpl(this.endSubscriptionDate);

  @override
  final DateTime endSubscriptionDate;

  @override
  String toString() {
    return 'GetEndSubscriptionDate.successful(endSubscriptionDate: $endSubscriptionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEndSubscriptionDateSuccessfulImpl &&
            (identical(other.endSubscriptionDate, endSubscriptionDate) ||
                other.endSubscriptionDate == endSubscriptionDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, endSubscriptionDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEndSubscriptionDateSuccessfulImplCopyWith<
          _$GetEndSubscriptionDateSuccessfulImpl>
      get copyWith => __$$GetEndSubscriptionDateSuccessfulImplCopyWithImpl<
          _$GetEndSubscriptionDateSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime endSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(endSubscriptionDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime endSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(endSubscriptionDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime endSubscriptionDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(endSubscriptionDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value) $default, {
    required TResult Function(GetEndSubscriptionDateSuccessful value)
        successful,
    required TResult Function(GetEndSubscriptionDateError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetEndSubscriptionDateStart value)? $default, {
    TResult? Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetEndSubscriptionDateError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value)? $default, {
    TResult Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult Function(GetEndSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetEndSubscriptionDateSuccessful
    implements GetEndSubscriptionDate {
  const factory GetEndSubscriptionDateSuccessful(
          final DateTime endSubscriptionDate) =
      _$GetEndSubscriptionDateSuccessfulImpl;

  DateTime get endSubscriptionDate;
  @JsonKey(ignore: true)
  _$$GetEndSubscriptionDateSuccessfulImplCopyWith<
          _$GetEndSubscriptionDateSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEndSubscriptionDateErrorImplCopyWith<$Res> {
  factory _$$GetEndSubscriptionDateErrorImplCopyWith(
          _$GetEndSubscriptionDateErrorImpl value,
          $Res Function(_$GetEndSubscriptionDateErrorImpl) then) =
      __$$GetEndSubscriptionDateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetEndSubscriptionDateErrorImplCopyWithImpl<$Res>
    extends _$GetEndSubscriptionDateCopyWithImpl<$Res,
        _$GetEndSubscriptionDateErrorImpl>
    implements _$$GetEndSubscriptionDateErrorImplCopyWith<$Res> {
  __$$GetEndSubscriptionDateErrorImplCopyWithImpl(
      _$GetEndSubscriptionDateErrorImpl _value,
      $Res Function(_$GetEndSubscriptionDateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetEndSubscriptionDateErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetEndSubscriptionDateErrorImpl implements GetEndSubscriptionDateError {
  const _$GetEndSubscriptionDateErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetEndSubscriptionDate.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEndSubscriptionDateErrorImpl &&
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
  _$$GetEndSubscriptionDateErrorImplCopyWith<_$GetEndSubscriptionDateErrorImpl>
      get copyWith => __$$GetEndSubscriptionDateErrorImplCopyWithImpl<
          _$GetEndSubscriptionDateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(DateTime endSubscriptionDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(DateTime endSubscriptionDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(DateTime endSubscriptionDate)? successful,
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
    TResult Function(GetEndSubscriptionDateStart value) $default, {
    required TResult Function(GetEndSubscriptionDateSuccessful value)
        successful,
    required TResult Function(GetEndSubscriptionDateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetEndSubscriptionDateStart value)? $default, {
    TResult? Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult? Function(GetEndSubscriptionDateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetEndSubscriptionDateStart value)? $default, {
    TResult Function(GetEndSubscriptionDateSuccessful value)? successful,
    TResult Function(GetEndSubscriptionDateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetEndSubscriptionDateError
    implements GetEndSubscriptionDate, ErrorAction {
  const factory GetEndSubscriptionDateError(
          final Object error, final StackTrace stackTrace) =
      _$GetEndSubscriptionDateErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetEndSubscriptionDateErrorImplCopyWith<_$GetEndSubscriptionDateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
