// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePassword {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPass, ActionResult result)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangePasswordStart value) $default, {
    required TResult Function(ChangePasswordSuccessful value) successful,
    required TResult Function(ChangePasswordError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePasswordStart value)? $default, {
    TResult? Function(ChangePasswordSuccessful value)? successful,
    TResult? Function(ChangePasswordError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePasswordStart value)? $default, {
    TResult Function(ChangePasswordSuccessful value)? successful,
    TResult Function(ChangePasswordError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCopyWith<$Res> {
  factory $ChangePasswordCopyWith(ChangePassword value, $Res Function(ChangePassword) then) =
      _$ChangePasswordCopyWithImpl<$Res, ChangePassword>;
}

/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res, $Val extends ChangePassword> implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePasswordStartImplCopyWith<$Res> {
  factory _$$ChangePasswordStartImplCopyWith(
          _$ChangePasswordStartImpl value, $Res Function(_$ChangePasswordStartImpl) then) =
      __$$ChangePasswordStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPass, ActionResult result});
}

/// @nodoc
class __$$ChangePasswordStartImplCopyWithImpl<$Res>
    extends _$ChangePasswordCopyWithImpl<$Res, _$ChangePasswordStartImpl>
    implements _$$ChangePasswordStartImplCopyWith<$Res> {
  __$$ChangePasswordStartImplCopyWithImpl(
      _$ChangePasswordStartImpl _value, $Res Function(_$ChangePasswordStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPass = null,
    Object? result = null,
  }) {
    return _then(_$ChangePasswordStartImpl(
      newPass: null == newPass
          ? _value.newPass
          : newPass // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$ChangePasswordStartImpl implements ChangePasswordStart {
  const _$ChangePasswordStartImpl({required this.newPass, required this.result});

  @override
  final String newPass;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'ChangePassword(newPass: $newPass, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStartImpl &&
            (identical(other.newPass, newPass) || other.newPass == newPass) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPass, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStartImplCopyWith<_$ChangePasswordStartImpl> get copyWith =>
      __$$ChangePasswordStartImplCopyWithImpl<_$ChangePasswordStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newPass, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPass, ActionResult result)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newPass, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newPass, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangePasswordStart value) $default, {
    required TResult Function(ChangePasswordSuccessful value) successful,
    required TResult Function(ChangePasswordError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePasswordStart value)? $default, {
    TResult? Function(ChangePasswordSuccessful value)? successful,
    TResult? Function(ChangePasswordError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePasswordStart value)? $default, {
    TResult Function(ChangePasswordSuccessful value)? successful,
    TResult Function(ChangePasswordError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordStart implements ChangePassword {
  const factory ChangePasswordStart({required final String newPass, required final ActionResult result}) =
      _$ChangePasswordStartImpl;

  String get newPass;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$ChangePasswordStartImplCopyWith<_$ChangePasswordStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordSuccessfulImplCopyWith<$Res> {
  factory _$$ChangePasswordSuccessfulImplCopyWith(
          _$ChangePasswordSuccessfulImpl value, $Res Function(_$ChangePasswordSuccessfulImpl) then) =
      __$$ChangePasswordSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePasswordSuccessfulImplCopyWithImpl<$Res>
    extends _$ChangePasswordCopyWithImpl<$Res, _$ChangePasswordSuccessfulImpl>
    implements _$$ChangePasswordSuccessfulImplCopyWith<$Res> {
  __$$ChangePasswordSuccessfulImplCopyWithImpl(
      _$ChangePasswordSuccessfulImpl _value, $Res Function(_$ChangePasswordSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePasswordSuccessfulImpl implements ChangePasswordSuccessful {
  const _$ChangePasswordSuccessfulImpl();

  @override
  String toString() {
    return 'ChangePassword.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ChangePasswordSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPass, ActionResult result)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result)? $default, {
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
    TResult Function(ChangePasswordStart value) $default, {
    required TResult Function(ChangePasswordSuccessful value) successful,
    required TResult Function(ChangePasswordError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePasswordStart value)? $default, {
    TResult? Function(ChangePasswordSuccessful value)? successful,
    TResult? Function(ChangePasswordError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePasswordStart value)? $default, {
    TResult Function(ChangePasswordSuccessful value)? successful,
    TResult Function(ChangePasswordError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSuccessful implements ChangePassword {
  const factory ChangePasswordSuccessful() = _$ChangePasswordSuccessfulImpl;
}

/// @nodoc
abstract class _$$ChangePasswordErrorImplCopyWith<$Res> {
  factory _$$ChangePasswordErrorImplCopyWith(
          _$ChangePasswordErrorImpl value, $Res Function(_$ChangePasswordErrorImpl) then) =
      __$$ChangePasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ChangePasswordErrorImplCopyWithImpl<$Res>
    extends _$ChangePasswordCopyWithImpl<$Res, _$ChangePasswordErrorImpl>
    implements _$$ChangePasswordErrorImplCopyWith<$Res> {
  __$$ChangePasswordErrorImplCopyWithImpl(
      _$ChangePasswordErrorImpl _value, $Res Function(_$ChangePasswordErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ChangePasswordErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ChangePasswordErrorImpl implements ChangePasswordError {
  const _$ChangePasswordErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ChangePassword.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordErrorImplCopyWith<_$ChangePasswordErrorImpl> get copyWith =>
      __$$ChangePasswordErrorImplCopyWithImpl<_$ChangePasswordErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newPass, ActionResult result)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newPass, ActionResult result)? $default, {
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
    TResult Function(ChangePasswordStart value) $default, {
    required TResult Function(ChangePasswordSuccessful value) successful,
    required TResult Function(ChangePasswordError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangePasswordStart value)? $default, {
    TResult? Function(ChangePasswordSuccessful value)? successful,
    TResult? Function(ChangePasswordError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangePasswordStart value)? $default, {
    TResult Function(ChangePasswordSuccessful value)? successful,
    TResult Function(ChangePasswordError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordError implements ChangePassword, ErrorAction {
  const factory ChangePasswordError(final Object error, final StackTrace stackTrace) = _$ChangePasswordErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ChangePasswordErrorImplCopyWith<_$ChangePasswordErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
