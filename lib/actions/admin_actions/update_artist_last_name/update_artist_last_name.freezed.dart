// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_last_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistLastName {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newLastName, String artistId) $default, {
    required TResult Function(String newLastName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newLastName, String artistId)? $default, {
    TResult? Function(String newLastName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newLastName, String artistId)? $default, {
    TResult Function(String newLastName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value) $default, {
    required TResult Function(UpdateArtistLastNameSuccessful value) successful,
    required TResult Function(UpdateArtistLastNameError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistLastNameStart value)? $default, {
    TResult? Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult? Function(UpdateArtistLastNameError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value)? $default, {
    TResult Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult Function(UpdateArtistLastNameError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistLastNameCopyWith<$Res> {
  factory $UpdateArtistLastNameCopyWith(UpdateArtistLastName value, $Res Function(UpdateArtistLastName) then) =
      _$UpdateArtistLastNameCopyWithImpl<$Res, UpdateArtistLastName>;
}

/// @nodoc
class _$UpdateArtistLastNameCopyWithImpl<$Res, $Val extends UpdateArtistLastName>
    implements $UpdateArtistLastNameCopyWith<$Res> {
  _$UpdateArtistLastNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistLastNameStartImplCopyWith<$Res> {
  factory _$$UpdateArtistLastNameStartImplCopyWith(
          _$UpdateArtistLastNameStartImpl value, $Res Function(_$UpdateArtistLastNameStartImpl) then) =
      __$$UpdateArtistLastNameStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newLastName, String artistId});
}

/// @nodoc
class __$$UpdateArtistLastNameStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistLastNameCopyWithImpl<$Res, _$UpdateArtistLastNameStartImpl>
    implements _$$UpdateArtistLastNameStartImplCopyWith<$Res> {
  __$$UpdateArtistLastNameStartImplCopyWithImpl(
      _$UpdateArtistLastNameStartImpl _value, $Res Function(_$UpdateArtistLastNameStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLastName = null,
    Object? artistId = null,
  }) {
    return _then(_$UpdateArtistLastNameStartImpl(
      newLastName: null == newLastName
          ? _value.newLastName
          : newLastName // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistLastNameStartImpl implements UpdateArtistLastNameStart {
  const _$UpdateArtistLastNameStartImpl({required this.newLastName, required this.artistId});

  @override
  final String newLastName;
  @override
  final String artistId;

  @override
  String toString() {
    return 'UpdateArtistLastName(newLastName: $newLastName, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistLastNameStartImpl &&
            (identical(other.newLastName, newLastName) || other.newLastName == newLastName) &&
            (identical(other.artistId, artistId) || other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLastName, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistLastNameStartImplCopyWith<_$UpdateArtistLastNameStartImpl> get copyWith =>
      __$$UpdateArtistLastNameStartImplCopyWithImpl<_$UpdateArtistLastNameStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newLastName, String artistId) $default, {
    required TResult Function(String newLastName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newLastName, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newLastName, String artistId)? $default, {
    TResult? Function(String newLastName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newLastName, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newLastName, String artistId)? $default, {
    TResult Function(String newLastName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newLastName, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value) $default, {
    required TResult Function(UpdateArtistLastNameSuccessful value) successful,
    required TResult Function(UpdateArtistLastNameError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistLastNameStart value)? $default, {
    TResult? Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult? Function(UpdateArtistLastNameError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value)? $default, {
    TResult Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult Function(UpdateArtistLastNameError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistLastNameStart implements UpdateArtistLastName {
  const factory UpdateArtistLastNameStart({required final String newLastName, required final String artistId}) =
      _$UpdateArtistLastNameStartImpl;

  String get newLastName;
  String get artistId;
  @JsonKey(ignore: true)
  _$$UpdateArtistLastNameStartImplCopyWith<_$UpdateArtistLastNameStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistLastNameSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistLastNameSuccessfulImplCopyWith(
          _$UpdateArtistLastNameSuccessfulImpl value, $Res Function(_$UpdateArtistLastNameSuccessfulImpl) then) =
      __$$UpdateArtistLastNameSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newLastName});
}

/// @nodoc
class __$$UpdateArtistLastNameSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistLastNameCopyWithImpl<$Res, _$UpdateArtistLastNameSuccessfulImpl>
    implements _$$UpdateArtistLastNameSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistLastNameSuccessfulImplCopyWithImpl(
      _$UpdateArtistLastNameSuccessfulImpl _value, $Res Function(_$UpdateArtistLastNameSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLastName = null,
  }) {
    return _then(_$UpdateArtistLastNameSuccessfulImpl(
      null == newLastName
          ? _value.newLastName
          : newLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistLastNameSuccessfulImpl implements UpdateArtistLastNameSuccessful {
  const _$UpdateArtistLastNameSuccessfulImpl(this.newLastName);

  @override
  final String newLastName;

  @override
  String toString() {
    return 'UpdateArtistLastName.successful(newLastName: $newLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistLastNameSuccessfulImpl &&
            (identical(other.newLastName, newLastName) || other.newLastName == newLastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistLastNameSuccessfulImplCopyWith<_$UpdateArtistLastNameSuccessfulImpl> get copyWith =>
      __$$UpdateArtistLastNameSuccessfulImplCopyWithImpl<_$UpdateArtistLastNameSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newLastName, String artistId) $default, {
    required TResult Function(String newLastName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newLastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newLastName, String artistId)? $default, {
    TResult? Function(String newLastName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newLastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newLastName, String artistId)? $default, {
    TResult Function(String newLastName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newLastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value) $default, {
    required TResult Function(UpdateArtistLastNameSuccessful value) successful,
    required TResult Function(UpdateArtistLastNameError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistLastNameStart value)? $default, {
    TResult? Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult? Function(UpdateArtistLastNameError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value)? $default, {
    TResult Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult Function(UpdateArtistLastNameError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistLastNameSuccessful implements UpdateArtistLastName {
  const factory UpdateArtistLastNameSuccessful(final String newLastName) = _$UpdateArtistLastNameSuccessfulImpl;

  String get newLastName;
  @JsonKey(ignore: true)
  _$$UpdateArtistLastNameSuccessfulImplCopyWith<_$UpdateArtistLastNameSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistLastNameErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistLastNameErrorImplCopyWith(
          _$UpdateArtistLastNameErrorImpl value, $Res Function(_$UpdateArtistLastNameErrorImpl) then) =
      __$$UpdateArtistLastNameErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistLastNameErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistLastNameCopyWithImpl<$Res, _$UpdateArtistLastNameErrorImpl>
    implements _$$UpdateArtistLastNameErrorImplCopyWith<$Res> {
  __$$UpdateArtistLastNameErrorImplCopyWithImpl(
      _$UpdateArtistLastNameErrorImpl _value, $Res Function(_$UpdateArtistLastNameErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistLastNameErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistLastNameErrorImpl implements UpdateArtistLastNameError {
  const _$UpdateArtistLastNameErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistLastName.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistLastNameErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistLastNameErrorImplCopyWith<_$UpdateArtistLastNameErrorImpl> get copyWith =>
      __$$UpdateArtistLastNameErrorImplCopyWithImpl<_$UpdateArtistLastNameErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newLastName, String artistId) $default, {
    required TResult Function(String newLastName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newLastName, String artistId)? $default, {
    TResult? Function(String newLastName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newLastName, String artistId)? $default, {
    TResult Function(String newLastName)? successful,
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
    TResult Function(UpdateArtistLastNameStart value) $default, {
    required TResult Function(UpdateArtistLastNameSuccessful value) successful,
    required TResult Function(UpdateArtistLastNameError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistLastNameStart value)? $default, {
    TResult? Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult? Function(UpdateArtistLastNameError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistLastNameStart value)? $default, {
    TResult Function(UpdateArtistLastNameSuccessful value)? successful,
    TResult Function(UpdateArtistLastNameError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistLastNameError implements UpdateArtistLastName, ErrorAction {
  const factory UpdateArtistLastNameError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtistLastNameErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistLastNameErrorImplCopyWith<_$UpdateArtistLastNameErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
