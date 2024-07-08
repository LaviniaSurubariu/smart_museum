// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_end_creation_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkEndCreationYear {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newEndCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newEndCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newEndCreationYear)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkEndCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkEndCreationYearError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult? Function(UpdateArtworkEndCreationYearError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult Function(UpdateArtworkEndCreationYearError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkEndCreationYearCopyWith<$Res> {
  factory $UpdateArtworkEndCreationYearCopyWith(
          UpdateArtworkEndCreationYear value,
          $Res Function(UpdateArtworkEndCreationYear) then) =
      _$UpdateArtworkEndCreationYearCopyWithImpl<$Res,
          UpdateArtworkEndCreationYear>;
}

/// @nodoc
class _$UpdateArtworkEndCreationYearCopyWithImpl<$Res,
        $Val extends UpdateArtworkEndCreationYear>
    implements $UpdateArtworkEndCreationYearCopyWith<$Res> {
  _$UpdateArtworkEndCreationYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkEndCreationYearStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkEndCreationYearStartImplCopyWith(
          _$UpdateArtworkEndCreationYearStartImpl value,
          $Res Function(_$UpdateArtworkEndCreationYearStartImpl) then) =
      __$$UpdateArtworkEndCreationYearStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newYear, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkEndCreationYearStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkEndCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkEndCreationYearStartImpl>
    implements _$$UpdateArtworkEndCreationYearStartImplCopyWith<$Res> {
  __$$UpdateArtworkEndCreationYearStartImplCopyWithImpl(
      _$UpdateArtworkEndCreationYearStartImpl _value,
      $Res Function(_$UpdateArtworkEndCreationYearStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newYear = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkEndCreationYearStartImpl(
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

class _$UpdateArtworkEndCreationYearStartImpl
    implements UpdateArtworkEndCreationYearStart {
  const _$UpdateArtworkEndCreationYearStartImpl(
      {required this.newYear, required this.artworkId});

  @override
  final int newYear;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkEndCreationYear(newYear: $newYear, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkEndCreationYearStartImpl &&
            (identical(other.newYear, newYear) || other.newYear == newYear) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newYear, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkEndCreationYearStartImplCopyWith<
          _$UpdateArtworkEndCreationYearStartImpl>
      get copyWith => __$$UpdateArtworkEndCreationYearStartImplCopyWithImpl<
          _$UpdateArtworkEndCreationYearStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newEndCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newYear, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newEndCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newYear, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newEndCreationYear)? successful,
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
    TResult Function(UpdateArtworkEndCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkEndCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkEndCreationYearError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult? Function(UpdateArtworkEndCreationYearError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult Function(UpdateArtworkEndCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkEndCreationYearStart
    implements UpdateArtworkEndCreationYear {
  const factory UpdateArtworkEndCreationYearStart(
          {required final int newYear, required final String artworkId}) =
      _$UpdateArtworkEndCreationYearStartImpl;

  int get newYear;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkEndCreationYearStartImplCopyWith<
          _$UpdateArtworkEndCreationYearStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkEndCreationYearSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkEndCreationYearSuccessfulImplCopyWith(
          _$UpdateArtworkEndCreationYearSuccessfulImpl value,
          $Res Function(_$UpdateArtworkEndCreationYearSuccessfulImpl) then) =
      __$$UpdateArtworkEndCreationYearSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newEndCreationYear});
}

/// @nodoc
class __$$UpdateArtworkEndCreationYearSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkEndCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkEndCreationYearSuccessfulImpl>
    implements _$$UpdateArtworkEndCreationYearSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkEndCreationYearSuccessfulImplCopyWithImpl(
      _$UpdateArtworkEndCreationYearSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkEndCreationYearSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEndCreationYear = null,
  }) {
    return _then(_$UpdateArtworkEndCreationYearSuccessfulImpl(
      null == newEndCreationYear
          ? _value.newEndCreationYear
          : newEndCreationYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkEndCreationYearSuccessfulImpl
    implements UpdateArtworkEndCreationYearSuccessful {
  const _$UpdateArtworkEndCreationYearSuccessfulImpl(this.newEndCreationYear);

  @override
  final int newEndCreationYear;

  @override
  String toString() {
    return 'UpdateArtworkEndCreationYear.successful(newEndCreationYear: $newEndCreationYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkEndCreationYearSuccessfulImpl &&
            (identical(other.newEndCreationYear, newEndCreationYear) ||
                other.newEndCreationYear == newEndCreationYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEndCreationYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkEndCreationYearSuccessfulImplCopyWith<
          _$UpdateArtworkEndCreationYearSuccessfulImpl>
      get copyWith =>
          __$$UpdateArtworkEndCreationYearSuccessfulImplCopyWithImpl<
              _$UpdateArtworkEndCreationYearSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newEndCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newEndCreationYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newEndCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newEndCreationYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newEndCreationYear)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newEndCreationYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkEndCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkEndCreationYearError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult? Function(UpdateArtworkEndCreationYearError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult Function(UpdateArtworkEndCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkEndCreationYearSuccessful
    implements UpdateArtworkEndCreationYear {
  const factory UpdateArtworkEndCreationYearSuccessful(
          final int newEndCreationYear) =
      _$UpdateArtworkEndCreationYearSuccessfulImpl;

  int get newEndCreationYear;
  @JsonKey(ignore: true)
  _$$UpdateArtworkEndCreationYearSuccessfulImplCopyWith<
          _$UpdateArtworkEndCreationYearSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkEndCreationYearErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkEndCreationYearErrorImplCopyWith(
          _$UpdateArtworkEndCreationYearErrorImpl value,
          $Res Function(_$UpdateArtworkEndCreationYearErrorImpl) then) =
      __$$UpdateArtworkEndCreationYearErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkEndCreationYearErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkEndCreationYearCopyWithImpl<$Res,
        _$UpdateArtworkEndCreationYearErrorImpl>
    implements _$$UpdateArtworkEndCreationYearErrorImplCopyWith<$Res> {
  __$$UpdateArtworkEndCreationYearErrorImplCopyWithImpl(
      _$UpdateArtworkEndCreationYearErrorImpl _value,
      $Res Function(_$UpdateArtworkEndCreationYearErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkEndCreationYearErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkEndCreationYearErrorImpl
    implements UpdateArtworkEndCreationYearError {
  const _$UpdateArtworkEndCreationYearErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkEndCreationYear.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkEndCreationYearErrorImpl &&
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
  _$$UpdateArtworkEndCreationYearErrorImplCopyWith<
          _$UpdateArtworkEndCreationYearErrorImpl>
      get copyWith => __$$UpdateArtworkEndCreationYearErrorImplCopyWithImpl<
          _$UpdateArtworkEndCreationYearErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int newYear, String artworkId) $default, {
    required TResult Function(int newEndCreationYear) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int newYear, String artworkId)? $default, {
    TResult? Function(int newEndCreationYear)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int newYear, String artworkId)? $default, {
    TResult Function(int newEndCreationYear)? successful,
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
    TResult Function(UpdateArtworkEndCreationYearStart value) $default, {
    required TResult Function(UpdateArtworkEndCreationYearSuccessful value)
        successful,
    required TResult Function(UpdateArtworkEndCreationYearError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult? Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult? Function(UpdateArtworkEndCreationYearError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkEndCreationYearStart value)? $default, {
    TResult Function(UpdateArtworkEndCreationYearSuccessful value)? successful,
    TResult Function(UpdateArtworkEndCreationYearError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkEndCreationYearError
    implements UpdateArtworkEndCreationYear, ErrorAction {
  const factory UpdateArtworkEndCreationYearError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkEndCreationYearErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkEndCreationYearErrorImplCopyWith<
          _$UpdateArtworkEndCreationYearErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
