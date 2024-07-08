// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeName {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeNameStart value) $default, {
    required TResult Function(ChangeNameSuccessful value) successful,
    required TResult Function(ChangeNameError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeNameStart value)? $default, {
    TResult? Function(ChangeNameSuccessful value)? successful,
    TResult? Function(ChangeNameError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeNameStart value)? $default, {
    TResult Function(ChangeNameSuccessful value)? successful,
    TResult Function(ChangeNameError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNameCopyWith<$Res> {
  factory $ChangeNameCopyWith(ChangeName value, $Res Function(ChangeName) then) =
      _$ChangeNameCopyWithImpl<$Res, ChangeName>;
}

/// @nodoc
class _$ChangeNameCopyWithImpl<$Res, $Val extends ChangeName> implements $ChangeNameCopyWith<$Res> {
  _$ChangeNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeNameStartImplCopyWith<$Res> {
  factory _$$ChangeNameStartImplCopyWith(_$ChangeNameStartImpl value, $Res Function(_$ChangeNameStartImpl) then) =
      __$$ChangeNameStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newFirstName, String newLastName, ActionResult result});
}

/// @nodoc
class __$$ChangeNameStartImplCopyWithImpl<$Res> extends _$ChangeNameCopyWithImpl<$Res, _$ChangeNameStartImpl>
    implements _$$ChangeNameStartImplCopyWith<$Res> {
  __$$ChangeNameStartImplCopyWithImpl(_$ChangeNameStartImpl _value, $Res Function(_$ChangeNameStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFirstName = null,
    Object? newLastName = null,
    Object? result = null,
  }) {
    return _then(_$ChangeNameStartImpl(
      newFirstName: null == newFirstName
          ? _value.newFirstName
          : newFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      newLastName: null == newLastName
          ? _value.newLastName
          : newLastName // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$ChangeNameStartImpl implements ChangeNameStart {
  const _$ChangeNameStartImpl({required this.newFirstName, required this.newLastName, required this.result});

  @override
  final String newFirstName;
  @override
  final String newLastName;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'ChangeName(newFirstName: $newFirstName, newLastName: $newLastName, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameStartImpl &&
            (identical(other.newFirstName, newFirstName) || other.newFirstName == newFirstName) &&
            (identical(other.newLastName, newLastName) || other.newLastName == newLastName) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFirstName, newLastName, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameStartImplCopyWith<_$ChangeNameStartImpl> get copyWith =>
      __$$ChangeNameStartImplCopyWithImpl<_$ChangeNameStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newFirstName, newLastName, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newFirstName, newLastName, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newFirstName, newLastName, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeNameStart value) $default, {
    required TResult Function(ChangeNameSuccessful value) successful,
    required TResult Function(ChangeNameError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeNameStart value)? $default, {
    TResult? Function(ChangeNameSuccessful value)? successful,
    TResult? Function(ChangeNameError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeNameStart value)? $default, {
    TResult Function(ChangeNameSuccessful value)? successful,
    TResult Function(ChangeNameError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChangeNameStart implements ChangeName {
  const factory ChangeNameStart(
      {required final String newFirstName,
      required final String newLastName,
      required final ActionResult result}) = _$ChangeNameStartImpl;

  String get newFirstName;
  String get newLastName;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$ChangeNameStartImplCopyWith<_$ChangeNameStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNameSuccessfulImplCopyWith<$Res> {
  factory _$$ChangeNameSuccessfulImplCopyWith(
          _$ChangeNameSuccessfulImpl value, $Res Function(_$ChangeNameSuccessfulImpl) then) =
      __$$ChangeNameSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChangeNameSuccessfulImplCopyWithImpl<$Res> extends _$ChangeNameCopyWithImpl<$Res, _$ChangeNameSuccessfulImpl>
    implements _$$ChangeNameSuccessfulImplCopyWith<$Res> {
  __$$ChangeNameSuccessfulImplCopyWithImpl(
      _$ChangeNameSuccessfulImpl _value, $Res Function(_$ChangeNameSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ChangeNameSuccessfulImpl(
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

class _$ChangeNameSuccessfulImpl implements ChangeNameSuccessful {
  const _$ChangeNameSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'ChangeName.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameSuccessfulImplCopyWith<_$ChangeNameSuccessfulImpl> get copyWith =>
      __$$ChangeNameSuccessfulImplCopyWithImpl<_$ChangeNameSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result)? $default, {
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
    TResult Function(ChangeNameStart value) $default, {
    required TResult Function(ChangeNameSuccessful value) successful,
    required TResult Function(ChangeNameError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeNameStart value)? $default, {
    TResult? Function(ChangeNameSuccessful value)? successful,
    TResult? Function(ChangeNameError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeNameStart value)? $default, {
    TResult Function(ChangeNameSuccessful value)? successful,
    TResult Function(ChangeNameError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ChangeNameSuccessful implements ChangeName {
  const factory ChangeNameSuccessful(final AppUser user) = _$ChangeNameSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$ChangeNameSuccessfulImplCopyWith<_$ChangeNameSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNameErrorImplCopyWith<$Res> {
  factory _$$ChangeNameErrorImplCopyWith(_$ChangeNameErrorImpl value, $Res Function(_$ChangeNameErrorImpl) then) =
      __$$ChangeNameErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ChangeNameErrorImplCopyWithImpl<$Res> extends _$ChangeNameCopyWithImpl<$Res, _$ChangeNameErrorImpl>
    implements _$$ChangeNameErrorImplCopyWith<$Res> {
  __$$ChangeNameErrorImplCopyWithImpl(_$ChangeNameErrorImpl _value, $Res Function(_$ChangeNameErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ChangeNameErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ChangeNameErrorImpl implements ChangeNameError {
  const _$ChangeNameErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ChangeName.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameErrorImplCopyWith<_$ChangeNameErrorImpl> get copyWith =>
      __$$ChangeNameErrorImplCopyWithImpl<_$ChangeNameErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String newLastName, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String newLastName, ActionResult result)? $default, {
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
    TResult Function(ChangeNameStart value) $default, {
    required TResult Function(ChangeNameSuccessful value) successful,
    required TResult Function(ChangeNameError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeNameStart value)? $default, {
    TResult? Function(ChangeNameSuccessful value)? successful,
    TResult? Function(ChangeNameError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeNameStart value)? $default, {
    TResult Function(ChangeNameSuccessful value)? successful,
    TResult Function(ChangeNameError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangeNameError implements ChangeName, ErrorAction {
  const factory ChangeNameError(final Object error, final StackTrace stackTrace) = _$ChangeNameErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ChangeNameErrorImplCopyWith<_$ChangeNameErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
