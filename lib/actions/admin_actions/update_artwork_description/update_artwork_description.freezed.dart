// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkDescription {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artworkId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId)? $default, {
    TResult Function(String newDescription)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value) $default, {
    required TResult Function(UpdateArtworkDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtworkDescriptionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult? Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtworkDescriptionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtworkDescriptionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkDescriptionCopyWith<$Res> {
  factory $UpdateArtworkDescriptionCopyWith(UpdateArtworkDescription value,
          $Res Function(UpdateArtworkDescription) then) =
      _$UpdateArtworkDescriptionCopyWithImpl<$Res, UpdateArtworkDescription>;
}

/// @nodoc
class _$UpdateArtworkDescriptionCopyWithImpl<$Res,
        $Val extends UpdateArtworkDescription>
    implements $UpdateArtworkDescriptionCopyWith<$Res> {
  _$UpdateArtworkDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkDescriptionStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkDescriptionStartImplCopyWith(
          _$UpdateArtworkDescriptionStartImpl value,
          $Res Function(_$UpdateArtworkDescriptionStartImpl) then) =
      __$$UpdateArtworkDescriptionStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newDescription, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkDescriptionStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkDescriptionCopyWithImpl<$Res,
        _$UpdateArtworkDescriptionStartImpl>
    implements _$$UpdateArtworkDescriptionStartImplCopyWith<$Res> {
  __$$UpdateArtworkDescriptionStartImplCopyWithImpl(
      _$UpdateArtworkDescriptionStartImpl _value,
      $Res Function(_$UpdateArtworkDescriptionStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDescription = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkDescriptionStartImpl(
      newDescription: null == newDescription
          ? _value.newDescription
          : newDescription // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkDescriptionStartImpl
    implements UpdateArtworkDescriptionStart {
  const _$UpdateArtworkDescriptionStartImpl(
      {required this.newDescription, required this.artworkId});

  @override
  final String newDescription;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkDescription(newDescription: $newDescription, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkDescriptionStartImpl &&
            (identical(other.newDescription, newDescription) ||
                other.newDescription == newDescription) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDescription, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkDescriptionStartImplCopyWith<
          _$UpdateArtworkDescriptionStartImpl>
      get copyWith => __$$UpdateArtworkDescriptionStartImplCopyWithImpl<
          _$UpdateArtworkDescriptionStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newDescription, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artworkId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newDescription, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId)? $default, {
    TResult Function(String newDescription)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newDescription, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value) $default, {
    required TResult Function(UpdateArtworkDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtworkDescriptionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult? Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtworkDescriptionError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtworkDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkDescriptionStart
    implements UpdateArtworkDescription {
  const factory UpdateArtworkDescriptionStart(
      {required final String newDescription,
      required final String artworkId}) = _$UpdateArtworkDescriptionStartImpl;

  String get newDescription;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkDescriptionStartImplCopyWith<
          _$UpdateArtworkDescriptionStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkDescriptionSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkDescriptionSuccessfulImplCopyWith(
          _$UpdateArtworkDescriptionSuccessfulImpl value,
          $Res Function(_$UpdateArtworkDescriptionSuccessfulImpl) then) =
      __$$UpdateArtworkDescriptionSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newDescription});
}

/// @nodoc
class __$$UpdateArtworkDescriptionSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkDescriptionCopyWithImpl<$Res,
        _$UpdateArtworkDescriptionSuccessfulImpl>
    implements _$$UpdateArtworkDescriptionSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkDescriptionSuccessfulImplCopyWithImpl(
      _$UpdateArtworkDescriptionSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkDescriptionSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDescription = null,
  }) {
    return _then(_$UpdateArtworkDescriptionSuccessfulImpl(
      null == newDescription
          ? _value.newDescription
          : newDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkDescriptionSuccessfulImpl
    implements UpdateArtworkDescriptionSuccessful {
  const _$UpdateArtworkDescriptionSuccessfulImpl(this.newDescription);

  @override
  final String newDescription;

  @override
  String toString() {
    return 'UpdateArtworkDescription.successful(newDescription: $newDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkDescriptionSuccessfulImpl &&
            (identical(other.newDescription, newDescription) ||
                other.newDescription == newDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkDescriptionSuccessfulImplCopyWith<
          _$UpdateArtworkDescriptionSuccessfulImpl>
      get copyWith => __$$UpdateArtworkDescriptionSuccessfulImplCopyWithImpl<
          _$UpdateArtworkDescriptionSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artworkId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId)? $default, {
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
    TResult Function(UpdateArtworkDescriptionStart value) $default, {
    required TResult Function(UpdateArtworkDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtworkDescriptionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult? Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtworkDescriptionError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtworkDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkDescriptionSuccessful
    implements UpdateArtworkDescription {
  const factory UpdateArtworkDescriptionSuccessful(
      final String newDescription) = _$UpdateArtworkDescriptionSuccessfulImpl;

  String get newDescription;
  @JsonKey(ignore: true)
  _$$UpdateArtworkDescriptionSuccessfulImplCopyWith<
          _$UpdateArtworkDescriptionSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkDescriptionErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkDescriptionErrorImplCopyWith(
          _$UpdateArtworkDescriptionErrorImpl value,
          $Res Function(_$UpdateArtworkDescriptionErrorImpl) then) =
      __$$UpdateArtworkDescriptionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkDescriptionErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkDescriptionCopyWithImpl<$Res,
        _$UpdateArtworkDescriptionErrorImpl>
    implements _$$UpdateArtworkDescriptionErrorImplCopyWith<$Res> {
  __$$UpdateArtworkDescriptionErrorImplCopyWithImpl(
      _$UpdateArtworkDescriptionErrorImpl _value,
      $Res Function(_$UpdateArtworkDescriptionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkDescriptionErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkDescriptionErrorImpl
    implements UpdateArtworkDescriptionError {
  const _$UpdateArtworkDescriptionErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkDescription.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkDescriptionErrorImpl &&
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
  _$$UpdateArtworkDescriptionErrorImplCopyWith<
          _$UpdateArtworkDescriptionErrorImpl>
      get copyWith => __$$UpdateArtworkDescriptionErrorImplCopyWithImpl<
          _$UpdateArtworkDescriptionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId) $default, {
    required TResult Function(String newDescription) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newDescription, String artworkId)? $default, {
    TResult? Function(String newDescription)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newDescription, String artworkId)? $default, {
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
    TResult Function(UpdateArtworkDescriptionStart value) $default, {
    required TResult Function(UpdateArtworkDescriptionSuccessful value)
        successful,
    required TResult Function(UpdateArtworkDescriptionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult? Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult? Function(UpdateArtworkDescriptionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkDescriptionStart value)? $default, {
    TResult Function(UpdateArtworkDescriptionSuccessful value)? successful,
    TResult Function(UpdateArtworkDescriptionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkDescriptionError
    implements UpdateArtworkDescription, ErrorAction {
  const factory UpdateArtworkDescriptionError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkDescriptionErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkDescriptionErrorImplCopyWith<
          _$UpdateArtworkDescriptionErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
