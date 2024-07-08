// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_birthdate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistBirthdate {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId) $default, {
    required TResult Function(DateTime? newBirthdate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult? Function(DateTime? newBirthdate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult Function(DateTime? newBirthdate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value) $default, {
    required TResult Function(UpdateArtistBirthdateSuccessful value) successful,
    required TResult Function(UpdateArtistBirthdateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistBirthdateStart value)? $default, {
    TResult? Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult? Function(UpdateArtistBirthdateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value)? $default, {
    TResult Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult Function(UpdateArtistBirthdateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistBirthdateCopyWith<$Res> {
  factory $UpdateArtistBirthdateCopyWith(UpdateArtistBirthdate value,
          $Res Function(UpdateArtistBirthdate) then) =
      _$UpdateArtistBirthdateCopyWithImpl<$Res, UpdateArtistBirthdate>;
}

/// @nodoc
class _$UpdateArtistBirthdateCopyWithImpl<$Res,
        $Val extends UpdateArtistBirthdate>
    implements $UpdateArtistBirthdateCopyWith<$Res> {
  _$UpdateArtistBirthdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistBirthdateStartImplCopyWith<$Res> {
  factory _$$UpdateArtistBirthdateStartImplCopyWith(
          _$UpdateArtistBirthdateStartImpl value,
          $Res Function(_$UpdateArtistBirthdateStartImpl) then) =
      __$$UpdateArtistBirthdateStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? newBirthdate, String artistId});
}

/// @nodoc
class __$$UpdateArtistBirthdateStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistBirthdateCopyWithImpl<$Res,
        _$UpdateArtistBirthdateStartImpl>
    implements _$$UpdateArtistBirthdateStartImplCopyWith<$Res> {
  __$$UpdateArtistBirthdateStartImplCopyWithImpl(
      _$UpdateArtistBirthdateStartImpl _value,
      $Res Function(_$UpdateArtistBirthdateStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newBirthdate = freezed,
    Object? artistId = null,
  }) {
    return _then(_$UpdateArtistBirthdateStartImpl(
      newBirthdate: freezed == newBirthdate
          ? _value.newBirthdate
          : newBirthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistBirthdateStartImpl implements UpdateArtistBirthdateStart {
  const _$UpdateArtistBirthdateStartImpl(
      {required this.newBirthdate, required this.artistId});

  @override
  final DateTime? newBirthdate;
  @override
  final String artistId;

  @override
  String toString() {
    return 'UpdateArtistBirthdate(newBirthdate: $newBirthdate, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistBirthdateStartImpl &&
            (identical(other.newBirthdate, newBirthdate) ||
                other.newBirthdate == newBirthdate) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newBirthdate, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistBirthdateStartImplCopyWith<_$UpdateArtistBirthdateStartImpl>
      get copyWith => __$$UpdateArtistBirthdateStartImplCopyWithImpl<
          _$UpdateArtistBirthdateStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId) $default, {
    required TResult Function(DateTime? newBirthdate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newBirthdate, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult? Function(DateTime? newBirthdate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newBirthdate, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult Function(DateTime? newBirthdate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newBirthdate, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value) $default, {
    required TResult Function(UpdateArtistBirthdateSuccessful value) successful,
    required TResult Function(UpdateArtistBirthdateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistBirthdateStart value)? $default, {
    TResult? Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult? Function(UpdateArtistBirthdateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value)? $default, {
    TResult Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult Function(UpdateArtistBirthdateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistBirthdateStart implements UpdateArtistBirthdate {
  const factory UpdateArtistBirthdateStart(
      {required final DateTime? newBirthdate,
      required final String artistId}) = _$UpdateArtistBirthdateStartImpl;

  DateTime? get newBirthdate;
  String get artistId;
  @JsonKey(ignore: true)
  _$$UpdateArtistBirthdateStartImplCopyWith<_$UpdateArtistBirthdateStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistBirthdateSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistBirthdateSuccessfulImplCopyWith(
          _$UpdateArtistBirthdateSuccessfulImpl value,
          $Res Function(_$UpdateArtistBirthdateSuccessfulImpl) then) =
      __$$UpdateArtistBirthdateSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? newBirthdate});
}

/// @nodoc
class __$$UpdateArtistBirthdateSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistBirthdateCopyWithImpl<$Res,
        _$UpdateArtistBirthdateSuccessfulImpl>
    implements _$$UpdateArtistBirthdateSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistBirthdateSuccessfulImplCopyWithImpl(
      _$UpdateArtistBirthdateSuccessfulImpl _value,
      $Res Function(_$UpdateArtistBirthdateSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newBirthdate = freezed,
  }) {
    return _then(_$UpdateArtistBirthdateSuccessfulImpl(
      freezed == newBirthdate
          ? _value.newBirthdate
          : newBirthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$UpdateArtistBirthdateSuccessfulImpl
    implements UpdateArtistBirthdateSuccessful {
  const _$UpdateArtistBirthdateSuccessfulImpl(this.newBirthdate);

  @override
  final DateTime? newBirthdate;

  @override
  String toString() {
    return 'UpdateArtistBirthdate.successful(newBirthdate: $newBirthdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistBirthdateSuccessfulImpl &&
            (identical(other.newBirthdate, newBirthdate) ||
                other.newBirthdate == newBirthdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newBirthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistBirthdateSuccessfulImplCopyWith<
          _$UpdateArtistBirthdateSuccessfulImpl>
      get copyWith => __$$UpdateArtistBirthdateSuccessfulImplCopyWithImpl<
          _$UpdateArtistBirthdateSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId) $default, {
    required TResult Function(DateTime? newBirthdate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newBirthdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult? Function(DateTime? newBirthdate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newBirthdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult Function(DateTime? newBirthdate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newBirthdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value) $default, {
    required TResult Function(UpdateArtistBirthdateSuccessful value) successful,
    required TResult Function(UpdateArtistBirthdateError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistBirthdateStart value)? $default, {
    TResult? Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult? Function(UpdateArtistBirthdateError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value)? $default, {
    TResult Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult Function(UpdateArtistBirthdateError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistBirthdateSuccessful
    implements UpdateArtistBirthdate {
  const factory UpdateArtistBirthdateSuccessful(final DateTime? newBirthdate) =
      _$UpdateArtistBirthdateSuccessfulImpl;

  DateTime? get newBirthdate;
  @JsonKey(ignore: true)
  _$$UpdateArtistBirthdateSuccessfulImplCopyWith<
          _$UpdateArtistBirthdateSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistBirthdateErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistBirthdateErrorImplCopyWith(
          _$UpdateArtistBirthdateErrorImpl value,
          $Res Function(_$UpdateArtistBirthdateErrorImpl) then) =
      __$$UpdateArtistBirthdateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistBirthdateErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistBirthdateCopyWithImpl<$Res,
        _$UpdateArtistBirthdateErrorImpl>
    implements _$$UpdateArtistBirthdateErrorImplCopyWith<$Res> {
  __$$UpdateArtistBirthdateErrorImplCopyWithImpl(
      _$UpdateArtistBirthdateErrorImpl _value,
      $Res Function(_$UpdateArtistBirthdateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistBirthdateErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistBirthdateErrorImpl implements UpdateArtistBirthdateError {
  const _$UpdateArtistBirthdateErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistBirthdate.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistBirthdateErrorImpl &&
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
  _$$UpdateArtistBirthdateErrorImplCopyWith<_$UpdateArtistBirthdateErrorImpl>
      get copyWith => __$$UpdateArtistBirthdateErrorImplCopyWithImpl<
          _$UpdateArtistBirthdateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId) $default, {
    required TResult Function(DateTime? newBirthdate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult? Function(DateTime? newBirthdate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newBirthdate, String artistId)? $default, {
    TResult Function(DateTime? newBirthdate)? successful,
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
    TResult Function(UpdateArtistBirthdateStart value) $default, {
    required TResult Function(UpdateArtistBirthdateSuccessful value) successful,
    required TResult Function(UpdateArtistBirthdateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistBirthdateStart value)? $default, {
    TResult? Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult? Function(UpdateArtistBirthdateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistBirthdateStart value)? $default, {
    TResult Function(UpdateArtistBirthdateSuccessful value)? successful,
    TResult Function(UpdateArtistBirthdateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistBirthdateError
    implements UpdateArtistBirthdate, ErrorAction {
  const factory UpdateArtistBirthdateError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtistBirthdateErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistBirthdateErrorImplCopyWith<_$UpdateArtistBirthdateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
