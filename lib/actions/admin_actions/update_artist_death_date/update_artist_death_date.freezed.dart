// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_death_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistDeathDate {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId) $default, {
    required TResult Function(DateTime? newDeathDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult? Function(DateTime? newDeathDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult Function(DateTime? newDeathDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value) $default, {
    required TResult Function(UpdateArtistDeathDateSuccessful value) successful,
    required TResult Function(UpdateArtistDeathDateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDeathDateStart value)? $default, {
    TResult? Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult? Function(UpdateArtistDeathDateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value)? $default, {
    TResult Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult Function(UpdateArtistDeathDateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistDeathDateCopyWith<$Res> {
  factory $UpdateArtistDeathDateCopyWith(UpdateArtistDeathDate value, $Res Function(UpdateArtistDeathDate) then) =
      _$UpdateArtistDeathDateCopyWithImpl<$Res, UpdateArtistDeathDate>;
}

/// @nodoc
class _$UpdateArtistDeathDateCopyWithImpl<$Res, $Val extends UpdateArtistDeathDate>
    implements $UpdateArtistDeathDateCopyWith<$Res> {
  _$UpdateArtistDeathDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistDeathDateStartImplCopyWith<$Res> {
  factory _$$UpdateArtistDeathDateStartImplCopyWith(
          _$UpdateArtistDeathDateStartImpl value, $Res Function(_$UpdateArtistDeathDateStartImpl) then) =
      __$$UpdateArtistDeathDateStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? newDeathDate, String artistId});
}

/// @nodoc
class __$$UpdateArtistDeathDateStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistDeathDateCopyWithImpl<$Res, _$UpdateArtistDeathDateStartImpl>
    implements _$$UpdateArtistDeathDateStartImplCopyWith<$Res> {
  __$$UpdateArtistDeathDateStartImplCopyWithImpl(
      _$UpdateArtistDeathDateStartImpl _value, $Res Function(_$UpdateArtistDeathDateStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDeathDate = freezed,
    Object? artistId = null,
  }) {
    return _then(_$UpdateArtistDeathDateStartImpl(
      newDeathDate: freezed == newDeathDate
          ? _value.newDeathDate
          : newDeathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDeathDateStartImpl implements UpdateArtistDeathDateStart {
  const _$UpdateArtistDeathDateStartImpl({required this.newDeathDate, required this.artistId});

  @override
  final DateTime? newDeathDate;
  @override
  final String artistId;

  @override
  String toString() {
    return 'UpdateArtistDeathDate(newDeathDate: $newDeathDate, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDeathDateStartImpl &&
            (identical(other.newDeathDate, newDeathDate) || other.newDeathDate == newDeathDate) &&
            (identical(other.artistId, artistId) || other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDeathDate, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDeathDateStartImplCopyWith<_$UpdateArtistDeathDateStartImpl> get copyWith =>
      __$$UpdateArtistDeathDateStartImplCopyWithImpl<_$UpdateArtistDeathDateStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId) $default, {
    required TResult Function(DateTime? newDeathDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newDeathDate, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult? Function(DateTime? newDeathDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newDeathDate, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult Function(DateTime? newDeathDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newDeathDate, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value) $default, {
    required TResult Function(UpdateArtistDeathDateSuccessful value) successful,
    required TResult Function(UpdateArtistDeathDateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDeathDateStart value)? $default, {
    TResult? Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult? Function(UpdateArtistDeathDateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value)? $default, {
    TResult Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult Function(UpdateArtistDeathDateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDeathDateStart implements UpdateArtistDeathDate {
  const factory UpdateArtistDeathDateStart({required final DateTime? newDeathDate, required final String artistId}) =
      _$UpdateArtistDeathDateStartImpl;

  DateTime? get newDeathDate;
  String get artistId;
  @JsonKey(ignore: true)
  _$$UpdateArtistDeathDateStartImplCopyWith<_$UpdateArtistDeathDateStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistDeathDateSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistDeathDateSuccessfulImplCopyWith(
          _$UpdateArtistDeathDateSuccessfulImpl value, $Res Function(_$UpdateArtistDeathDateSuccessfulImpl) then) =
      __$$UpdateArtistDeathDateSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? newDeathDate});
}

/// @nodoc
class __$$UpdateArtistDeathDateSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistDeathDateCopyWithImpl<$Res, _$UpdateArtistDeathDateSuccessfulImpl>
    implements _$$UpdateArtistDeathDateSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistDeathDateSuccessfulImplCopyWithImpl(
      _$UpdateArtistDeathDateSuccessfulImpl _value, $Res Function(_$UpdateArtistDeathDateSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDeathDate = freezed,
  }) {
    return _then(_$UpdateArtistDeathDateSuccessfulImpl(
      freezed == newDeathDate
          ? _value.newDeathDate
          : newDeathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDeathDateSuccessfulImpl implements UpdateArtistDeathDateSuccessful {
  const _$UpdateArtistDeathDateSuccessfulImpl(this.newDeathDate);

  @override
  final DateTime? newDeathDate;

  @override
  String toString() {
    return 'UpdateArtistDeathDate.successful(newDeathDate: $newDeathDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDeathDateSuccessfulImpl &&
            (identical(other.newDeathDate, newDeathDate) || other.newDeathDate == newDeathDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDeathDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDeathDateSuccessfulImplCopyWith<_$UpdateArtistDeathDateSuccessfulImpl> get copyWith =>
      __$$UpdateArtistDeathDateSuccessfulImplCopyWithImpl<_$UpdateArtistDeathDateSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId) $default, {
    required TResult Function(DateTime? newDeathDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newDeathDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult? Function(DateTime? newDeathDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newDeathDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult Function(DateTime? newDeathDate)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newDeathDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value) $default, {
    required TResult Function(UpdateArtistDeathDateSuccessful value) successful,
    required TResult Function(UpdateArtistDeathDateError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDeathDateStart value)? $default, {
    TResult? Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult? Function(UpdateArtistDeathDateError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value)? $default, {
    TResult Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult Function(UpdateArtistDeathDateError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDeathDateSuccessful implements UpdateArtistDeathDate {
  const factory UpdateArtistDeathDateSuccessful(final DateTime? newDeathDate) = _$UpdateArtistDeathDateSuccessfulImpl;

  DateTime? get newDeathDate;
  @JsonKey(ignore: true)
  _$$UpdateArtistDeathDateSuccessfulImplCopyWith<_$UpdateArtistDeathDateSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistDeathDateErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistDeathDateErrorImplCopyWith(
          _$UpdateArtistDeathDateErrorImpl value, $Res Function(_$UpdateArtistDeathDateErrorImpl) then) =
      __$$UpdateArtistDeathDateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistDeathDateErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistDeathDateCopyWithImpl<$Res, _$UpdateArtistDeathDateErrorImpl>
    implements _$$UpdateArtistDeathDateErrorImplCopyWith<$Res> {
  __$$UpdateArtistDeathDateErrorImplCopyWithImpl(
      _$UpdateArtistDeathDateErrorImpl _value, $Res Function(_$UpdateArtistDeathDateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistDeathDateErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDeathDateErrorImpl implements UpdateArtistDeathDateError {
  const _$UpdateArtistDeathDateErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistDeathDate.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDeathDateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDeathDateErrorImplCopyWith<_$UpdateArtistDeathDateErrorImpl> get copyWith =>
      __$$UpdateArtistDeathDateErrorImplCopyWithImpl<_$UpdateArtistDeathDateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId) $default, {
    required TResult Function(DateTime? newDeathDate) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult? Function(DateTime? newDeathDate)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? newDeathDate, String artistId)? $default, {
    TResult Function(DateTime? newDeathDate)? successful,
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
    TResult Function(UpdateArtistDeathDateStart value) $default, {
    required TResult Function(UpdateArtistDeathDateSuccessful value) successful,
    required TResult Function(UpdateArtistDeathDateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDeathDateStart value)? $default, {
    TResult? Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult? Function(UpdateArtistDeathDateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDeathDateStart value)? $default, {
    TResult Function(UpdateArtistDeathDateSuccessful value)? successful,
    TResult Function(UpdateArtistDeathDateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDeathDateError implements UpdateArtistDeathDate, ErrorAction {
  const factory UpdateArtistDeathDateError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtistDeathDateErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistDeathDateErrorImplCopyWith<_$UpdateArtistDeathDateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
