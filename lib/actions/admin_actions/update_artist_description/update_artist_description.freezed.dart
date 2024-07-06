// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtistDescription {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artistId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artistId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artistId)? $default, {
    TResult Function(String newDescription)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value) $default, {
    required TResult Function(UpdateArtistDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtistDescriptionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDescriptionStart value)? $default, {
    TResult? Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtistDescriptionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value)? $default, {
    TResult Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtistDescriptionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistDescriptionCopyWith<$Res> {
  factory $UpdateArtistDescriptionCopyWith(UpdateArtistDescription value,
          $Res Function(UpdateArtistDescription) then) =
      _$UpdateArtistDescriptionCopyWithImpl<$Res, UpdateArtistDescription>;
}

/// @nodoc
class _$UpdateArtistDescriptionCopyWithImpl<$Res,
        $Val extends UpdateArtistDescription>
    implements $UpdateArtistDescriptionCopyWith<$Res> {
  _$UpdateArtistDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtistDescriptionStartImplCopyWith<$Res> {
  factory _$$UpdateArtistDescriptionStartImplCopyWith(
          _$UpdateArtistDescriptionStartImpl value,
          $Res Function(_$UpdateArtistDescriptionStartImpl) then) =
      __$$UpdateArtistDescriptionStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newDescription, String artistId});
}

/// @nodoc
class __$$UpdateArtistDescriptionStartImplCopyWithImpl<$Res>
    extends _$UpdateArtistDescriptionCopyWithImpl<$Res,
        _$UpdateArtistDescriptionStartImpl>
    implements _$$UpdateArtistDescriptionStartImplCopyWith<$Res> {
  __$$UpdateArtistDescriptionStartImplCopyWithImpl(
      _$UpdateArtistDescriptionStartImpl _value,
      $Res Function(_$UpdateArtistDescriptionStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDescription = null,
    Object? artistId = null,
  }) {
    return _then(_$UpdateArtistDescriptionStartImpl(
      newDescription: null == newDescription
          ? _value.newDescription
          : newDescription // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDescriptionStartImpl
    implements UpdateArtistDescriptionStart {
  const _$UpdateArtistDescriptionStartImpl(
      {required this.newDescription, required this.artistId});

  @override
  final String newDescription;
  @override
  final String artistId;

  @override
  String toString() {
    return 'UpdateArtistDescription(newDescription: $newDescription, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDescriptionStartImpl &&
            (identical(other.newDescription, newDescription) ||
                other.newDescription == newDescription) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDescription, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDescriptionStartImplCopyWith<
          _$UpdateArtistDescriptionStartImpl>
      get copyWith => __$$UpdateArtistDescriptionStartImplCopyWithImpl<
          _$UpdateArtistDescriptionStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artistId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newDescription, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artistId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newDescription, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artistId)? $default, {
    TResult Function(String newDescription)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newDescription, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value) $default, {
    required TResult Function(UpdateArtistDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtistDescriptionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDescriptionStart value)? $default, {
    TResult? Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtistDescriptionError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value)? $default, {
    TResult Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtistDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDescriptionStart implements UpdateArtistDescription {
  const factory UpdateArtistDescriptionStart(
      {required final String newDescription,
      required final String artistId}) = _$UpdateArtistDescriptionStartImpl;

  String get newDescription;
  String get artistId;
  @JsonKey(ignore: true)
  _$$UpdateArtistDescriptionStartImplCopyWith<
          _$UpdateArtistDescriptionStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistDescriptionSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtistDescriptionSuccessfulImplCopyWith(
          _$UpdateArtistDescriptionSuccessfulImpl value,
          $Res Function(_$UpdateArtistDescriptionSuccessfulImpl) then) =
      __$$UpdateArtistDescriptionSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newDescription});
}

/// @nodoc
class __$$UpdateArtistDescriptionSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtistDescriptionCopyWithImpl<$Res,
        _$UpdateArtistDescriptionSuccessfulImpl>
    implements _$$UpdateArtistDescriptionSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtistDescriptionSuccessfulImplCopyWithImpl(
      _$UpdateArtistDescriptionSuccessfulImpl _value,
      $Res Function(_$UpdateArtistDescriptionSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDescription = null,
  }) {
    return _then(_$UpdateArtistDescriptionSuccessfulImpl(
      null == newDescription
          ? _value.newDescription
          : newDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDescriptionSuccessfulImpl
    implements UpdateArtistDescriptionSuccessful {
  const _$UpdateArtistDescriptionSuccessfulImpl(this.newDescription);

  @override
  final String newDescription;

  @override
  String toString() {
    return 'UpdateArtistDescription.successful(newDescription: $newDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDescriptionSuccessfulImpl &&
            (identical(other.newDescription, newDescription) ||
                other.newDescription == newDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDescriptionSuccessfulImplCopyWith<
          _$UpdateArtistDescriptionSuccessfulImpl>
      get copyWith => __$$UpdateArtistDescriptionSuccessfulImplCopyWithImpl<
          _$UpdateArtistDescriptionSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artistId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artistId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artistId)? $default, {
    TResult Function(String newDescription)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value) $default, {
    required TResult Function(UpdateArtistDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtistDescriptionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDescriptionStart value)? $default, {
    TResult? Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtistDescriptionError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value)? $default, {
    TResult Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtistDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDescriptionSuccessful
    implements UpdateArtistDescription {
  const factory UpdateArtistDescriptionSuccessful(final String newDescription) =
      _$UpdateArtistDescriptionSuccessfulImpl;

  String get newDescription;
  @JsonKey(ignore: true)
  _$$UpdateArtistDescriptionSuccessfulImplCopyWith<
          _$UpdateArtistDescriptionSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtistDescriptionErrorImplCopyWith<$Res> {
  factory _$$UpdateArtistDescriptionErrorImplCopyWith(
          _$UpdateArtistDescriptionErrorImpl value,
          $Res Function(_$UpdateArtistDescriptionErrorImpl) then) =
      __$$UpdateArtistDescriptionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtistDescriptionErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtistDescriptionCopyWithImpl<$Res,
        _$UpdateArtistDescriptionErrorImpl>
    implements _$$UpdateArtistDescriptionErrorImplCopyWith<$Res> {
  __$$UpdateArtistDescriptionErrorImplCopyWithImpl(
      _$UpdateArtistDescriptionErrorImpl _value,
      $Res Function(_$UpdateArtistDescriptionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtistDescriptionErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtistDescriptionErrorImpl
    implements UpdateArtistDescriptionError {
  const _$UpdateArtistDescriptionErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtistDescription.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDescriptionErrorImpl &&
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
  _$$UpdateArtistDescriptionErrorImplCopyWith<
          _$UpdateArtistDescriptionErrorImpl>
      get copyWith => __$$UpdateArtistDescriptionErrorImplCopyWithImpl<
          _$UpdateArtistDescriptionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artistId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artistId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artistId)? $default, {
    TResult Function(String newDescription)? successful,
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
    TResult Function(UpdateArtistDescriptionStart value) $default, {
    required TResult Function(UpdateArtistDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtistDescriptionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtistDescriptionStart value)? $default, {
    TResult? Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtistDescriptionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtistDescriptionStart value)? $default, {
    TResult Function(UpdateArtistDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtistDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtistDescriptionError
    implements UpdateArtistDescription, ErrorAction {
  const factory UpdateArtistDescriptionError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtistDescriptionErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtistDescriptionErrorImplCopyWith<
          _$UpdateArtistDescriptionErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
