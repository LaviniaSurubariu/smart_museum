// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_first_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistFirstName {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId) $default, {
    required TResult Function(String newFirstName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String artistId)? $default, {
    TResult? Function(String newFirstName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId)? $default, {
    TResult Function(String newFirstName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value) $default, {
    required TResult Function(UpdateArtistFirstNameSuccessful value) successful,
    required TResult Function(UpdateArtistFirstNameError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistFirstNameStart value)? $default, {
    TResult? Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult? Function(UpdateArtistFirstNameError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value)? $default, {
    TResult Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult Function(UpdateArtistFirstNameError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistFirstNameCopyWith<$Res> {
  factory $UpdateArtistFirstNameCopyWith(UpdateArtistFirstName value, $Res Function(UpdateArtistFirstName) then) =
      _$UpdateArtistFirstNameCopyWithImpl<$Res, UpdateArtistFirstName>;
}

/// @nodoc
class _$UpdateArtistFirstNameCopyWithImpl<$Res, $Val extends UpdateArtistFirstName>
    implements $UpdateArtistFirstNameCopyWith<$Res> {
  _$UpdateArtistFirstNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistFirstNameStartImplCopyWith<$Res> {
  factory _$$UpdateArtistFirstNameStartImplCopyWith(
          _$UpdateArtistFirstNameStartImpl value, $Res Function(_$UpdateArtistFirstNameStartImpl) then) =
      __$$UpdateArtistFirstNameStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newFirstName, String artistId});
}

/// @nodoc
class __$$UpdateArtistFirstNameStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistFirstNameCopyWithImpl<$Res, _$UpdateArtistFirstNameStartImpl>
    implements _$$UpdateArtistFirstNameStartImplCopyWith<$Res> {
  __$$UpdateArtistFirstNameStartImplCopyWithImpl(
      _$UpdateArtistFirstNameStartImpl _value, $Res Function(_$UpdateArtistFirstNameStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFirstName = null,
    Object? artistId = null,
  }) {
    return _then(_$UpdateArtistFirstNameStartImpl(
      newFirstName: null == newFirstName
          ? _value.newFirstName
          : newFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistFirstNameStartImpl implements UpdateArtistFirstNameStart {
  const _$UpdateArtistFirstNameStartImpl({required this.newFirstName, required this.artistId});

  @override
  final String newFirstName;
  @override
  final String artistId;

  @override
  String toString() {
    return 'UpdateArtistFirstName(newFirstName: $newFirstName, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistFirstNameStartImpl &&
            (identical(other.newFirstName, newFirstName) || other.newFirstName == newFirstName) &&
            (identical(other.artistId, artistId) || other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFirstName, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistFirstNameStartImplCopyWith<_$UpdateArtistFirstNameStartImpl> get copyWith =>
      __$$UpdateArtistFirstNameStartImplCopyWithImpl<_$UpdateArtistFirstNameStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId) $default, {
    required TResult Function(String newFirstName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newFirstName, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String artistId)? $default, {
    TResult? Function(String newFirstName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newFirstName, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId)? $default, {
    TResult Function(String newFirstName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newFirstName, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value) $default, {
    required TResult Function(UpdateArtistFirstNameSuccessful value) successful,
    required TResult Function(UpdateArtistFirstNameError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistFirstNameStart value)? $default, {
    TResult? Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult? Function(UpdateArtistFirstNameError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value)? $default, {
    TResult Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult Function(UpdateArtistFirstNameError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistFirstNameStart implements UpdateArtistFirstName {
  const factory UpdateArtistFirstNameStart({required final String newFirstName, required final String artistId}) =
      _$UpdateArtistFirstNameStartImpl;

  String get newFirstName;
  String get artistId;
  @JsonKey(ignore: true)
  _$$UpdateArtistFirstNameStartImplCopyWith<_$UpdateArtistFirstNameStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistFirstNameSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistFirstNameSuccessfulImplCopyWith(
          _$UpdateArtistFirstNameSuccessfulImpl value, $Res Function(_$UpdateArtistFirstNameSuccessfulImpl) then) =
      __$$UpdateArtistFirstNameSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newFirstName});
}

/// @nodoc
class __$$UpdateArtistFirstNameSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistFirstNameCopyWithImpl<$Res, _$UpdateArtistFirstNameSuccessfulImpl>
    implements _$$UpdateArtistFirstNameSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistFirstNameSuccessfulImplCopyWithImpl(
      _$UpdateArtistFirstNameSuccessfulImpl _value, $Res Function(_$UpdateArtistFirstNameSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFirstName = null,
  }) {
    return _then(_$UpdateArtistFirstNameSuccessfulImpl(
      null == newFirstName
          ? _value.newFirstName
          : newFirstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistFirstNameSuccessfulImpl implements UpdateArtistFirstNameSuccessful {
  const _$UpdateArtistFirstNameSuccessfulImpl(this.newFirstName);

  @override
  final String newFirstName;

  @override
  String toString() {
    return 'UpdateArtistFirstName.successful(newFirstName: $newFirstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistFirstNameSuccessfulImpl &&
            (identical(other.newFirstName, newFirstName) || other.newFirstName == newFirstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFirstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistFirstNameSuccessfulImplCopyWith<_$UpdateArtistFirstNameSuccessfulImpl> get copyWith =>
      __$$UpdateArtistFirstNameSuccessfulImplCopyWithImpl<_$UpdateArtistFirstNameSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId) $default, {
    required TResult Function(String newFirstName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newFirstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String artistId)? $default, {
    TResult? Function(String newFirstName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newFirstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId)? $default, {
    TResult Function(String newFirstName)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newFirstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value) $default, {
    required TResult Function(UpdateArtistFirstNameSuccessful value) successful,
    required TResult Function(UpdateArtistFirstNameError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistFirstNameStart value)? $default, {
    TResult? Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult? Function(UpdateArtistFirstNameError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value)? $default, {
    TResult Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult Function(UpdateArtistFirstNameError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistFirstNameSuccessful implements UpdateArtistFirstName {
  const factory UpdateArtistFirstNameSuccessful(final String newFirstName) = _$UpdateArtistFirstNameSuccessfulImpl;

  String get newFirstName;
  @JsonKey(ignore: true)
  _$$UpdateArtistFirstNameSuccessfulImplCopyWith<_$UpdateArtistFirstNameSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistFirstNameErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistFirstNameErrorImplCopyWith(
          _$UpdateArtistFirstNameErrorImpl value, $Res Function(_$UpdateArtistFirstNameErrorImpl) then) =
      __$$UpdateArtistFirstNameErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistFirstNameErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistFirstNameCopyWithImpl<$Res, _$UpdateArtistFirstNameErrorImpl>
    implements _$$UpdateArtistFirstNameErrorImplCopyWith<$Res> {
  __$$UpdateArtistFirstNameErrorImplCopyWithImpl(
      _$UpdateArtistFirstNameErrorImpl _value, $Res Function(_$UpdateArtistFirstNameErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistFirstNameErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistFirstNameErrorImpl implements UpdateArtistFirstNameError {
  const _$UpdateArtistFirstNameErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistFirstName.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistFirstNameErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistFirstNameErrorImplCopyWith<_$UpdateArtistFirstNameErrorImpl> get copyWith =>
      __$$UpdateArtistFirstNameErrorImplCopyWithImpl<_$UpdateArtistFirstNameErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId) $default, {
    required TResult Function(String newFirstName) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newFirstName, String artistId)? $default, {
    TResult? Function(String newFirstName)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newFirstName, String artistId)? $default, {
    TResult Function(String newFirstName)? successful,
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
    TResult Function(UpdateArtistFirstNameStart value) $default, {
    required TResult Function(UpdateArtistFirstNameSuccessful value) successful,
    required TResult Function(UpdateArtistFirstNameError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistFirstNameStart value)? $default, {
    TResult? Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult? Function(UpdateArtistFirstNameError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistFirstNameStart value)? $default, {
    TResult Function(UpdateArtistFirstNameSuccessful value)? successful,
    TResult Function(UpdateArtistFirstNameError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistFirstNameError implements UpdateArtistFirstName, ErrorAction {
  const factory UpdateArtistFirstNameError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtistFirstNameErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistFirstNameErrorImplCopyWith<_$UpdateArtistFirstNameErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
