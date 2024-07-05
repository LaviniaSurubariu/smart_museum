// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_start_creation_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkStartCreationYear {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newStartCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newStartCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newStartCreationYear)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkStartCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkStartCreationYearError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult? Function(UpdateArtworkStartCreationYearError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult Function(UpdateArtworkStartCreationYearError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkStartCreationYearCopyWith<$Res> {
  factory $UpdateArtworkStartCreationYearCopyWith(
          UpdateArtworkStartCreationYear value,
          $Res Function(UpdateArtworkStartCreationYear) then) =
      _$UpdateArtworkStartCreationYearCopyWithImpl<$Res,
          UpdateArtworkStartCreationYear>;
}

/// @nodoc
class _$UpdateArtworkStartCreationYearCopyWithImpl<$Res,
        $Val extends UpdateArtworkStartCreationYear>
    implements $UpdateArtworkStartCreationYearCopyWith<$Res> {
  _$UpdateArtworkStartCreationYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkStartCreationYearStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkStartCreationYearStartImplCopyWith(
          _$UpdateArtworkStartCreationYearStartImpl value,
          $Res Function(_$UpdateArtworkStartCreationYearStartImpl) then) =
      __$$UpdateArtworkStartCreationYearStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newYear, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkStartCreationYearStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStartCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkStartCreationYearStartImpl>
    implements _$$UpdateArtworkStartCreationYearStartImplCopyWith<$Res> {
  __$$UpdateArtworkStartCreationYearStartImplCopyWithImpl(
      _$UpdateArtworkStartCreationYearStartImpl _value,
      $Res Function(_$UpdateArtworkStartCreationYearStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newYear = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkStartCreationYearStartImpl(
      newYear: null == newYear
          ? _value.newYear
          : newYear // ignore: cast_nullable_to_non_nullable
              as int,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStartCreationYearStartImpl
    implements UpdateArtworkStartCreationYearStart {
  const _$UpdateArtworkStartCreationYearStartImpl(
      {required this.newYear, required this.artworkId});

  @override
  final int newYear;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkStartCreationYear(newYear: $newYear, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStartCreationYearStartImpl &&
            (identical(other.newYear, newYear) || other.newYear == newYear) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newYear, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkStartCreationYearStartImplCopyWith<
          _$UpdateArtworkStartCreationYearStartImpl>
      get copyWith => __$$UpdateArtworkStartCreationYearStartImplCopyWithImpl<
          _$UpdateArtworkStartCreationYearStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newStartCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newYear, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newStartCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newYear, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newStartCreationYear)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newYear, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkStartCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkStartCreationYearError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult? Function(UpdateArtworkStartCreationYearError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult Function(UpdateArtworkStartCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStartCreationYearStart
    implements UpdateArtworkStartCreationYear {
  const factory UpdateArtworkStartCreationYearStart(
          {required final int newYear, required final String artworkId}) =
      _$UpdateArtworkStartCreationYearStartImpl;

  int get newYear;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStartCreationYearStartImplCopyWith<
          _$UpdateArtworkStartCreationYearStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkStartCreationYearSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkStartCreationYearSuccessfulImplCopyWith(
          _$UpdateArtworkStartCreationYearSuccessfulImpl value,
          $Res Function(_$UpdateArtworkStartCreationYearSuccessfulImpl) then) =
      __$$UpdateArtworkStartCreationYearSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newStartCreationYear});
}

/// @nodoc
class __$$UpdateArtworkStartCreationYearSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStartCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkStartCreationYearSuccessfulImpl>
    implements _$$UpdateArtworkStartCreationYearSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkStartCreationYearSuccessfulImplCopyWithImpl(
      _$UpdateArtworkStartCreationYearSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkStartCreationYearSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStartCreationYear = null,
  }) {
    return _then(_$UpdateArtworkStartCreationYearSuccessfulImpl(
      null == newStartCreationYear
          ? _value.newStartCreationYear
          : newStartCreationYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStartCreationYearSuccessfulImpl
    implements UpdateArtworkStartCreationYearSuccessful {
  const _$UpdateArtworkStartCreationYearSuccessfulImpl(
      this.newStartCreationYear);

  @override
  final int newStartCreationYear;

  @override
  String toString() {
    return 'UpdateArtworkStartCreationYear.successful(newStartCreationYear: $newStartCreationYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStartCreationYearSuccessfulImpl &&
            (identical(other.newStartCreationYear, newStartCreationYear) ||
                other.newStartCreationYear == newStartCreationYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStartCreationYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkStartCreationYearSuccessfulImplCopyWith<
          _$UpdateArtworkStartCreationYearSuccessfulImpl>
      get copyWith =>
          __$$UpdateArtworkStartCreationYearSuccessfulImplCopyWithImpl<
              _$UpdateArtworkStartCreationYearSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newStartCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newStartCreationYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newStartCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newStartCreationYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newStartCreationYear)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newStartCreationYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkStartCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkStartCreationYearError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult? Function(UpdateArtworkStartCreationYearError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult Function(UpdateArtworkStartCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStartCreationYearSuccessful
    implements UpdateArtworkStartCreationYear {
  const factory UpdateArtworkStartCreationYearSuccessful(
          final int newStartCreationYear) =
      _$UpdateArtworkStartCreationYearSuccessfulImpl;

  int get newStartCreationYear;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStartCreationYearSuccessfulImplCopyWith<
          _$UpdateArtworkStartCreationYearSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkStartCreationYearErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkStartCreationYearErrorImplCopyWith(
          _$UpdateArtworkStartCreationYearErrorImpl value,
          $Res Function(_$UpdateArtworkStartCreationYearErrorImpl) then) =
      __$$UpdateArtworkStartCreationYearErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkStartCreationYearErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkStartCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkStartCreationYearErrorImpl>
    implements _$$UpdateArtworkStartCreationYearErrorImplCopyWith<$Res> {
  __$$UpdateArtworkStartCreationYearErrorImplCopyWithImpl(
      _$UpdateArtworkStartCreationYearErrorImpl _value,
      $Res Function(_$UpdateArtworkStartCreationYearErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkStartCreationYearErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkStartCreationYearErrorImpl
    implements UpdateArtworkStartCreationYearError {
  const _$UpdateArtworkStartCreationYearErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkStartCreationYear.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkStartCreationYearErrorImpl &&
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
  _$$UpdateArtworkStartCreationYearErrorImplCopyWith<
          _$UpdateArtworkStartCreationYearErrorImpl>
      get copyWith => __$$UpdateArtworkStartCreationYearErrorImplCopyWithImpl<
          _$UpdateArtworkStartCreationYearErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newStartCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newStartCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newStartCreationYear)? successful,
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
    TResult Function(UpdateArtworkStartCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkStartCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkStartCreationYearError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult? Function(UpdateArtworkStartCreationYearError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkStartCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkStartCreationYearSuccessful value)?
        successful,
    TResult Function(UpdateArtworkStartCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkStartCreationYearError
    implements UpdateArtworkStartCreationYear, ErrorAction {
  const factory UpdateArtworkStartCreationYearError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkStartCreationYearErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkStartCreationYearErrorImplCopyWith<
          _$UpdateArtworkStartCreationYearErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
