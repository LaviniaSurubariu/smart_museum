// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddArtist {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddArtistStart value) $default, {
    required TResult Function(AddArtistSuccessful value) successful,
    required TResult Function(AddArtistError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtistStart value)? $default, {
    TResult? Function(AddArtistSuccessful value)? successful,
    TResult? Function(AddArtistError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtistStart value)? $default, {
    TResult Function(AddArtistSuccessful value)? successful,
    TResult Function(AddArtistError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArtistCopyWith<$Res> {
  factory $AddArtistCopyWith(AddArtist value, $Res Function(AddArtist) then) =
      _$AddArtistCopyWithImpl<$Res, AddArtist>;
}

/// @nodoc
class _$AddArtistCopyWithImpl<$Res, $Val extends AddArtist>
    implements $AddArtistCopyWith<$Res> {
  _$AddArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddArtistStartImplCopyWith<$Res> {
  factory _$$AddArtistStartImplCopyWith(_$AddArtistStartImpl value,
          $Res Function(_$AddArtistStartImpl) then) =
      __$$AddArtistStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String picturePath,
      DateTime birthdate,
      DateTime? deathDate,
      String description,
      ActionResult result});
}

/// @nodoc
class __$$AddArtistStartImplCopyWithImpl<$Res>
    extends _$AddArtistCopyWithImpl<$Res, _$AddArtistStartImpl>
    implements _$$AddArtistStartImplCopyWith<$Res> {
  __$$AddArtistStartImplCopyWithImpl(
      _$AddArtistStartImpl _value, $Res Function(_$AddArtistStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? picturePath = null,
    Object? birthdate = null,
    Object? deathDate = freezed,
    Object? description = null,
    Object? result = null,
  }) {
    return _then(_$AddArtistStartImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$AddArtistStartImpl implements AddArtistStart {
  const _$AddArtistStartImpl(
      {required this.firstName,
      required this.lastName,
      required this.picturePath,
      required this.birthdate,
      required this.deathDate,
      required this.description,
      required this.result});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String picturePath;
  @override
  final DateTime birthdate;
  @override
  final DateTime? deathDate;
  @override
  final String description;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'AddArtist(firstName: $firstName, lastName: $lastName, picturePath: $picturePath, birthdate: $birthdate, deathDate: $deathDate, description: $description, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtistStartImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, picturePath,
      birthdate, deathDate, description, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArtistStartImplCopyWith<_$AddArtistStartImpl> get copyWith =>
      __$$AddArtistStartImplCopyWithImpl<_$AddArtistStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(firstName, lastName, picturePath, birthdate, deathDate,
        description, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(firstName, lastName, picturePath, birthdate,
        deathDate, description, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(firstName, lastName, picturePath, birthdate, deathDate,
          description, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddArtistStart value) $default, {
    required TResult Function(AddArtistSuccessful value) successful,
    required TResult Function(AddArtistError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtistStart value)? $default, {
    TResult? Function(AddArtistSuccessful value)? successful,
    TResult? Function(AddArtistError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtistStart value)? $default, {
    TResult Function(AddArtistSuccessful value)? successful,
    TResult Function(AddArtistError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddArtistStart implements AddArtist {
  const factory AddArtistStart(
      {required final String firstName,
      required final String lastName,
      required final String picturePath,
      required final DateTime birthdate,
      required final DateTime? deathDate,
      required final String description,
      required final ActionResult result}) = _$AddArtistStartImpl;

  String get firstName;
  String get lastName;
  String get picturePath;
  DateTime get birthdate;
  DateTime? get deathDate;
  String get description;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$AddArtistStartImplCopyWith<_$AddArtistStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddArtistSuccessfulImplCopyWith<$Res> {
  factory _$$AddArtistSuccessfulImplCopyWith(_$AddArtistSuccessfulImpl value,
          $Res Function(_$AddArtistSuccessfulImpl) then) =
      __$$AddArtistSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddArtistSuccessfulImplCopyWithImpl<$Res>
    extends _$AddArtistCopyWithImpl<$Res, _$AddArtistSuccessfulImpl>
    implements _$$AddArtistSuccessfulImplCopyWith<$Res> {
  __$$AddArtistSuccessfulImplCopyWithImpl(_$AddArtistSuccessfulImpl _value,
      $Res Function(_$AddArtistSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddArtistSuccessfulImpl implements AddArtistSuccessful {
  const _$AddArtistSuccessfulImpl();

  @override
  String toString() {
    return 'AddArtist.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtistSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
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
    TResult Function(AddArtistStart value) $default, {
    required TResult Function(AddArtistSuccessful value) successful,
    required TResult Function(AddArtistError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtistStart value)? $default, {
    TResult? Function(AddArtistSuccessful value)? successful,
    TResult? Function(AddArtistError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtistStart value)? $default, {
    TResult Function(AddArtistSuccessful value)? successful,
    TResult Function(AddArtistError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddArtistSuccessful implements AddArtist {
  const factory AddArtistSuccessful() = _$AddArtistSuccessfulImpl;
}

/// @nodoc
abstract class _$$AddArtistErrorImplCopyWith<$Res> {
  factory _$$AddArtistErrorImplCopyWith(_$AddArtistErrorImpl value,
          $Res Function(_$AddArtistErrorImpl) then) =
      __$$AddArtistErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddArtistErrorImplCopyWithImpl<$Res>
    extends _$AddArtistCopyWithImpl<$Res, _$AddArtistErrorImpl>
    implements _$$AddArtistErrorImplCopyWith<$Res> {
  __$$AddArtistErrorImplCopyWithImpl(
      _$AddArtistErrorImpl _value, $Res Function(_$AddArtistErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddArtistErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddArtistErrorImpl implements AddArtistError {
  const _$AddArtistErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddArtist.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtistErrorImpl &&
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
  _$$AddArtistErrorImplCopyWith<_$AddArtistErrorImpl> get copyWith =>
      __$$AddArtistErrorImplCopyWithImpl<_$AddArtistErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String firstName,
            String lastName,
            String picturePath,
            DateTime birthdate,
            DateTime? deathDate,
            String description,
            ActionResult result)?
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
    TResult Function(AddArtistStart value) $default, {
    required TResult Function(AddArtistSuccessful value) successful,
    required TResult Function(AddArtistError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtistStart value)? $default, {
    TResult? Function(AddArtistSuccessful value)? successful,
    TResult? Function(AddArtistError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtistStart value)? $default, {
    TResult Function(AddArtistSuccessful value)? successful,
    TResult Function(AddArtistError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddArtistError implements AddArtist, ErrorAction {
  const factory AddArtistError(
      final Object error, final StackTrace stackTrace) = _$AddArtistErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddArtistErrorImplCopyWith<_$AddArtistErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
