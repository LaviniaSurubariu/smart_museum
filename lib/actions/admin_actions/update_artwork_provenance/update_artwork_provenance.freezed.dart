// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_provenance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkProvenance {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId) $default, {
    required TResult Function(String newProvenance) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newProvenance, String artworkId)? $default, {
    TResult? Function(String newProvenance)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId)? $default, {
    TResult Function(String newProvenance)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value) $default, {
    required TResult Function(UpdateArtworkProvenanceSuccessful value)
        successful,
    required TResult Function(UpdateArtworkProvenanceError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult? Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult? Function(UpdateArtworkProvenanceError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult Function(UpdateArtworkProvenanceError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkProvenanceCopyWith<$Res> {
  factory $UpdateArtworkProvenanceCopyWith(UpdateArtworkProvenance value,
          $Res Function(UpdateArtworkProvenance) then) =
      _$UpdateArtworkProvenanceCopyWithImpl<$Res, UpdateArtworkProvenance>;
}

/// @nodoc
class _$UpdateArtworkProvenanceCopyWithImpl<$Res,
        $Val extends UpdateArtworkProvenance>
    implements $UpdateArtworkProvenanceCopyWith<$Res> {
  _$UpdateArtworkProvenanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkProvenanceStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkProvenanceStartImplCopyWith(
          _$UpdateArtworkProvenanceStartImpl value,
          $Res Function(_$UpdateArtworkProvenanceStartImpl) then) =
      __$$UpdateArtworkProvenanceStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newProvenance, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkProvenanceStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkProvenanceCopyWithImpl<$Res,
        _$UpdateArtworkProvenanceStartImpl>
    implements _$$UpdateArtworkProvenanceStartImplCopyWith<$Res> {
  __$$UpdateArtworkProvenanceStartImplCopyWithImpl(
      _$UpdateArtworkProvenanceStartImpl _value,
      $Res Function(_$UpdateArtworkProvenanceStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProvenance = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkProvenanceStartImpl(
      newProvenance: null == newProvenance
          ? _value.newProvenance
          : newProvenance // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkProvenanceStartImpl
    implements UpdateArtworkProvenanceStart {
  const _$UpdateArtworkProvenanceStartImpl(
      {required this.newProvenance, required this.artworkId});

  @override
  final String newProvenance;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkProvenance(newProvenance: $newProvenance, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkProvenanceStartImpl &&
            (identical(other.newProvenance, newProvenance) ||
                other.newProvenance == newProvenance) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newProvenance, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkProvenanceStartImplCopyWith<
          _$UpdateArtworkProvenanceStartImpl>
      get copyWith => __$$UpdateArtworkProvenanceStartImplCopyWithImpl<
          _$UpdateArtworkProvenanceStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId) $default, {
    required TResult Function(String newProvenance) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newProvenance, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newProvenance, String artworkId)? $default, {
    TResult? Function(String newProvenance)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newProvenance, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId)? $default, {
    TResult Function(String newProvenance)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newProvenance, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value) $default, {
    required TResult Function(UpdateArtworkProvenanceSuccessful value)
        successful,
    required TResult Function(UpdateArtworkProvenanceError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult? Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult? Function(UpdateArtworkProvenanceError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult Function(UpdateArtworkProvenanceError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkProvenanceStart implements UpdateArtworkProvenance {
  const factory UpdateArtworkProvenanceStart(
      {required final String newProvenance,
      required final String artworkId}) = _$UpdateArtworkProvenanceStartImpl;

  String get newProvenance;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkProvenanceStartImplCopyWith<
          _$UpdateArtworkProvenanceStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkProvenanceSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkProvenanceSuccessfulImplCopyWith(
          _$UpdateArtworkProvenanceSuccessfulImpl value,
          $Res Function(_$UpdateArtworkProvenanceSuccessfulImpl) then) =
      __$$UpdateArtworkProvenanceSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newProvenance});
}

/// @nodoc
class __$$UpdateArtworkProvenanceSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkProvenanceCopyWithImpl<$Res,
        _$UpdateArtworkProvenanceSuccessfulImpl>
    implements _$$UpdateArtworkProvenanceSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkProvenanceSuccessfulImplCopyWithImpl(
      _$UpdateArtworkProvenanceSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkProvenanceSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProvenance = null,
  }) {
    return _then(_$UpdateArtworkProvenanceSuccessfulImpl(
      null == newProvenance
          ? _value.newProvenance
          : newProvenance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkProvenanceSuccessfulImpl
    implements UpdateArtworkProvenanceSuccessful {
  const _$UpdateArtworkProvenanceSuccessfulImpl(this.newProvenance);

  @override
  final String newProvenance;

  @override
  String toString() {
    return 'UpdateArtworkProvenance.successful(newProvenance: $newProvenance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkProvenanceSuccessfulImpl &&
            (identical(other.newProvenance, newProvenance) ||
                other.newProvenance == newProvenance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newProvenance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkProvenanceSuccessfulImplCopyWith<
          _$UpdateArtworkProvenanceSuccessfulImpl>
      get copyWith => __$$UpdateArtworkProvenanceSuccessfulImplCopyWithImpl<
          _$UpdateArtworkProvenanceSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId) $default, {
    required TResult Function(String newProvenance) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newProvenance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newProvenance, String artworkId)? $default, {
    TResult? Function(String newProvenance)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newProvenance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId)? $default, {
    TResult Function(String newProvenance)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newProvenance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value) $default, {
    required TResult Function(UpdateArtworkProvenanceSuccessful value)
        successful,
    required TResult Function(UpdateArtworkProvenanceError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult? Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult? Function(UpdateArtworkProvenanceError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult Function(UpdateArtworkProvenanceError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkProvenanceSuccessful
    implements UpdateArtworkProvenance {
  const factory UpdateArtworkProvenanceSuccessful(final String newProvenance) =
      _$UpdateArtworkProvenanceSuccessfulImpl;

  String get newProvenance;
  @JsonKey(ignore: true)
  _$$UpdateArtworkProvenanceSuccessfulImplCopyWith<
          _$UpdateArtworkProvenanceSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkProvenanceErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkProvenanceErrorImplCopyWith(
          _$UpdateArtworkProvenanceErrorImpl value,
          $Res Function(_$UpdateArtworkProvenanceErrorImpl) then) =
      __$$UpdateArtworkProvenanceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkProvenanceErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkProvenanceCopyWithImpl<$Res,
        _$UpdateArtworkProvenanceErrorImpl>
    implements _$$UpdateArtworkProvenanceErrorImplCopyWith<$Res> {
  __$$UpdateArtworkProvenanceErrorImplCopyWithImpl(
      _$UpdateArtworkProvenanceErrorImpl _value,
      $Res Function(_$UpdateArtworkProvenanceErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkProvenanceErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkProvenanceErrorImpl
    implements UpdateArtworkProvenanceError {
  const _$UpdateArtworkProvenanceErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkProvenance.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkProvenanceErrorImpl &&
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
  _$$UpdateArtworkProvenanceErrorImplCopyWith<
          _$UpdateArtworkProvenanceErrorImpl>
      get copyWith => __$$UpdateArtworkProvenanceErrorImplCopyWithImpl<
          _$UpdateArtworkProvenanceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId) $default, {
    required TResult Function(String newProvenance) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newProvenance, String artworkId)? $default, {
    TResult? Function(String newProvenance)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newProvenance, String artworkId)? $default, {
    TResult Function(String newProvenance)? successful,
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
    TResult Function(UpdateArtworkProvenanceStart value) $default, {
    required TResult Function(UpdateArtworkProvenanceSuccessful value)
        successful,
    required TResult Function(UpdateArtworkProvenanceError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult? Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult? Function(UpdateArtworkProvenanceError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkProvenanceStart value)? $default, {
    TResult Function(UpdateArtworkProvenanceSuccessful value)? successful,
    TResult Function(UpdateArtworkProvenanceError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkProvenanceError
    implements UpdateArtworkProvenance, ErrorAction {
  const factory UpdateArtworkProvenanceError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkProvenanceErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkProvenanceErrorImplCopyWith<
          _$UpdateArtworkProvenanceErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
