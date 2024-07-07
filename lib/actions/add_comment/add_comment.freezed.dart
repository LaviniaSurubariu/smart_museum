// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddComment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddCommentStart value) $default, {
    required TResult Function(AddCommentSuccessful value) successful,
    required TResult Function(AddCommentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddCommentStart value)? $default, {
    TResult? Function(AddCommentSuccessful value)? successful,
    TResult? Function(AddCommentError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddCommentStart value)? $default, {
    TResult Function(AddCommentSuccessful value)? successful,
    TResult Function(AddCommentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentCopyWith<$Res> {
  factory $AddCommentCopyWith(AddComment value, $Res Function(AddComment) then) =
      _$AddCommentCopyWithImpl<$Res, AddComment>;
}

/// @nodoc
class _$AddCommentCopyWithImpl<$Res, $Val extends AddComment> implements $AddCommentCopyWith<$Res> {
  _$AddCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCommentStartImplCopyWith<$Res> {
  factory _$$AddCommentStartImplCopyWith(_$AddCommentStartImpl value, $Res Function(_$AddCommentStartImpl) then) =
      __$$AddCommentStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser});
}

/// @nodoc
class __$$AddCommentStartImplCopyWithImpl<$Res> extends _$AddCommentCopyWithImpl<$Res, _$AddCommentStartImpl>
    implements _$$AddCommentStartImplCopyWith<$Res> {
  __$$AddCommentStartImplCopyWithImpl(_$AddCommentStartImpl _value, $Res Function(_$AddCommentStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? createdAt = null,
    Object? idUser = null,
    Object? firstNameUser = null,
    Object? lastNameUser = null,
  }) {
    return _then(_$AddCommentStartImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameUser: null == firstNameUser
          ? _value.firstNameUser
          : firstNameUser // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameUser: null == lastNameUser
          ? _value.lastNameUser
          : lastNameUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCommentStartImpl implements AddCommentStart {
  const _$AddCommentStartImpl(
      {required this.text,
      required this.createdAt,
      required this.idUser,
      required this.firstNameUser,
      required this.lastNameUser});

  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final String idUser;
  @override
  final String firstNameUser;
  @override
  final String lastNameUser;

  @override
  String toString() {
    return 'AddComment(text: $text, createdAt: $createdAt, idUser: $idUser, firstNameUser: $firstNameUser, lastNameUser: $lastNameUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentStartImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.firstNameUser, firstNameUser) || other.firstNameUser == firstNameUser) &&
            (identical(other.lastNameUser, lastNameUser) || other.lastNameUser == lastNameUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, createdAt, idUser, firstNameUser, lastNameUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentStartImplCopyWith<_$AddCommentStartImpl> get copyWith =>
      __$$AddCommentStartImplCopyWithImpl<_$AddCommentStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text, createdAt, idUser, firstNameUser, lastNameUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(text, createdAt, idUser, firstNameUser, lastNameUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text, createdAt, idUser, firstNameUser, lastNameUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddCommentStart value) $default, {
    required TResult Function(AddCommentSuccessful value) successful,
    required TResult Function(AddCommentError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddCommentStart value)? $default, {
    TResult? Function(AddCommentSuccessful value)? successful,
    TResult? Function(AddCommentError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddCommentStart value)? $default, {
    TResult Function(AddCommentSuccessful value)? successful,
    TResult Function(AddCommentError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddCommentStart implements AddComment {
  const factory AddCommentStart(
      {required final String text,
      required final DateTime createdAt,
      required final String idUser,
      required final String firstNameUser,
      required final String lastNameUser}) = _$AddCommentStartImpl;

  String get text;
  DateTime get createdAt;
  String get idUser;
  String get firstNameUser;
  String get lastNameUser;
  @JsonKey(ignore: true)
  _$$AddCommentStartImplCopyWith<_$AddCommentStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentSuccessfulImplCopyWith<$Res> {
  factory _$$AddCommentSuccessfulImplCopyWith(
          _$AddCommentSuccessfulImpl value, $Res Function(_$AddCommentSuccessfulImpl) then) =
      __$$AddCommentSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommentSuccessfulImplCopyWithImpl<$Res> extends _$AddCommentCopyWithImpl<$Res, _$AddCommentSuccessfulImpl>
    implements _$$AddCommentSuccessfulImplCopyWith<$Res> {
  __$$AddCommentSuccessfulImplCopyWithImpl(
      _$AddCommentSuccessfulImpl _value, $Res Function(_$AddCommentSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommentSuccessfulImpl implements AddCommentSuccessful {
  const _$AddCommentSuccessfulImpl();

  @override
  String toString() {
    return 'AddComment.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AddCommentSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
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
    TResult Function(AddCommentStart value) $default, {
    required TResult Function(AddCommentSuccessful value) successful,
    required TResult Function(AddCommentError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddCommentStart value)? $default, {
    TResult? Function(AddCommentSuccessful value)? successful,
    TResult? Function(AddCommentError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddCommentStart value)? $default, {
    TResult Function(AddCommentSuccessful value)? successful,
    TResult Function(AddCommentError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddCommentSuccessful implements AddComment {
  const factory AddCommentSuccessful() = _$AddCommentSuccessfulImpl;
}

/// @nodoc
abstract class _$$AddCommentErrorImplCopyWith<$Res> {
  factory _$$AddCommentErrorImplCopyWith(_$AddCommentErrorImpl value, $Res Function(_$AddCommentErrorImpl) then) =
      __$$AddCommentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddCommentErrorImplCopyWithImpl<$Res> extends _$AddCommentCopyWithImpl<$Res, _$AddCommentErrorImpl>
    implements _$$AddCommentErrorImplCopyWith<$Res> {
  __$$AddCommentErrorImplCopyWithImpl(_$AddCommentErrorImpl _value, $Res Function(_$AddCommentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddCommentErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddCommentErrorImpl implements AddCommentError {
  const _$AddCommentErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddComment.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentErrorImplCopyWith<_$AddCommentErrorImpl> get copyWith =>
      __$$AddCommentErrorImplCopyWithImpl<_$AddCommentErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser)?
        $default, {
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
    TResult Function(AddCommentStart value) $default, {
    required TResult Function(AddCommentSuccessful value) successful,
    required TResult Function(AddCommentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddCommentStart value)? $default, {
    TResult? Function(AddCommentSuccessful value)? successful,
    TResult? Function(AddCommentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddCommentStart value)? $default, {
    TResult Function(AddCommentSuccessful value)? successful,
    TResult Function(AddCommentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddCommentError implements AddComment, ErrorAction {
  const factory AddCommentError(final Object error, final StackTrace stackTrace) = _$AddCommentErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddCommentErrorImplCopyWith<_$AddCommentErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
