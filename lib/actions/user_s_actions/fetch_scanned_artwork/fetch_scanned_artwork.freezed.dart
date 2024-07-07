// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_scanned_artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchScannedArtwork {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artworkId) $default, {
    required TResult Function(Artwork scannedArtwork) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artworkId)? $default, {
    TResult? Function(Artwork scannedArtwork)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artworkId)? $default, {
    TResult Function(Artwork scannedArtwork)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value) $default, {
    required TResult Function(FetchScannedArtworkSuccessful value) successful,
    required TResult Function(FetchScannedArtworkError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchScannedArtworkStart value)? $default, {
    TResult? Function(FetchScannedArtworkSuccessful value)? successful,
    TResult? Function(FetchScannedArtworkError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value)? $default, {
    TResult Function(FetchScannedArtworkSuccessful value)? successful,
    TResult Function(FetchScannedArtworkError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchScannedArtworkCopyWith<$Res> {
  factory $FetchScannedArtworkCopyWith(FetchScannedArtwork value, $Res Function(FetchScannedArtwork) then) =
      _$FetchScannedArtworkCopyWithImpl<$Res, FetchScannedArtwork>;
}

/// @nodoc
class _$FetchScannedArtworkCopyWithImpl<$Res, $Val extends FetchScannedArtwork>
    implements $FetchScannedArtworkCopyWith<$Res> {
  _$FetchScannedArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchScannedArtworkStartImplCopyWith<$Res> {
  factory _$$FetchScannedArtworkStartImplCopyWith(
          _$FetchScannedArtworkStartImpl value, $Res Function(_$FetchScannedArtworkStartImpl) then) =
      __$$FetchScannedArtworkStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artworkId});
}

/// @nodoc
class __$$FetchScannedArtworkStartImplCopyWithImpl<$Res>
    extends _$FetchScannedArtworkCopyWithImpl<$Res, _$FetchScannedArtworkStartImpl>
    implements _$$FetchScannedArtworkStartImplCopyWith<$Res> {
  __$$FetchScannedArtworkStartImplCopyWithImpl(
      _$FetchScannedArtworkStartImpl _value, $Res Function(_$FetchScannedArtworkStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artworkId = null,
  }) {
    return _then(_$FetchScannedArtworkStartImpl(
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchScannedArtworkStartImpl implements FetchScannedArtworkStart {
  const _$FetchScannedArtworkStartImpl({required this.artworkId});

  @override
  final String artworkId;

  @override
  String toString() {
    return 'FetchScannedArtwork(artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchScannedArtworkStartImpl &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchScannedArtworkStartImplCopyWith<_$FetchScannedArtworkStartImpl> get copyWith =>
      __$$FetchScannedArtworkStartImplCopyWithImpl<_$FetchScannedArtworkStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artworkId) $default, {
    required TResult Function(Artwork scannedArtwork) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artworkId)? $default, {
    TResult? Function(Artwork scannedArtwork)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artworkId)? $default, {
    TResult Function(Artwork scannedArtwork)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value) $default, {
    required TResult Function(FetchScannedArtworkSuccessful value) successful,
    required TResult Function(FetchScannedArtworkError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchScannedArtworkStart value)? $default, {
    TResult? Function(FetchScannedArtworkSuccessful value)? successful,
    TResult? Function(FetchScannedArtworkError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value)? $default, {
    TResult Function(FetchScannedArtworkSuccessful value)? successful,
    TResult Function(FetchScannedArtworkError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FetchScannedArtworkStart implements FetchScannedArtwork {
  const factory FetchScannedArtworkStart({required final String artworkId}) = _$FetchScannedArtworkStartImpl;

  String get artworkId;
  @JsonKey(ignore: true)
  _$$FetchScannedArtworkStartImplCopyWith<_$FetchScannedArtworkStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchScannedArtworkSuccessfulImplCopyWith<$Res> {
  factory _$$FetchScannedArtworkSuccessfulImplCopyWith(
          _$FetchScannedArtworkSuccessfulImpl value, $Res Function(_$FetchScannedArtworkSuccessfulImpl) then) =
      __$$FetchScannedArtworkSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Artwork scannedArtwork});

  $ArtworkCopyWith<$Res> get scannedArtwork;
}

/// @nodoc
class __$$FetchScannedArtworkSuccessfulImplCopyWithImpl<$Res>
    extends _$FetchScannedArtworkCopyWithImpl<$Res, _$FetchScannedArtworkSuccessfulImpl>
    implements _$$FetchScannedArtworkSuccessfulImplCopyWith<$Res> {
  __$$FetchScannedArtworkSuccessfulImplCopyWithImpl(
      _$FetchScannedArtworkSuccessfulImpl _value, $Res Function(_$FetchScannedArtworkSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scannedArtwork = null,
  }) {
    return _then(_$FetchScannedArtworkSuccessfulImpl(
      null == scannedArtwork
          ? _value.scannedArtwork
          : scannedArtwork // ignore: cast_nullable_to_non_nullable
              as Artwork,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkCopyWith<$Res> get scannedArtwork {
    return $ArtworkCopyWith<$Res>(_value.scannedArtwork, (value) {
      return _then(_value.copyWith(scannedArtwork: value));
    });
  }
}

/// @nodoc

class _$FetchScannedArtworkSuccessfulImpl implements FetchScannedArtworkSuccessful {
  const _$FetchScannedArtworkSuccessfulImpl(this.scannedArtwork);

  @override
  final Artwork scannedArtwork;

  @override
  String toString() {
    return 'FetchScannedArtwork.successful(scannedArtwork: $scannedArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchScannedArtworkSuccessfulImpl &&
            (identical(other.scannedArtwork, scannedArtwork) || other.scannedArtwork == scannedArtwork));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scannedArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchScannedArtworkSuccessfulImplCopyWith<_$FetchScannedArtworkSuccessfulImpl> get copyWith =>
      __$$FetchScannedArtworkSuccessfulImplCopyWithImpl<_$FetchScannedArtworkSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artworkId) $default, {
    required TResult Function(Artwork scannedArtwork) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(scannedArtwork);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artworkId)? $default, {
    TResult? Function(Artwork scannedArtwork)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(scannedArtwork);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artworkId)? $default, {
    TResult Function(Artwork scannedArtwork)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(scannedArtwork);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value) $default, {
    required TResult Function(FetchScannedArtworkSuccessful value) successful,
    required TResult Function(FetchScannedArtworkError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchScannedArtworkStart value)? $default, {
    TResult? Function(FetchScannedArtworkSuccessful value)? successful,
    TResult? Function(FetchScannedArtworkError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value)? $default, {
    TResult Function(FetchScannedArtworkSuccessful value)? successful,
    TResult Function(FetchScannedArtworkError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class FetchScannedArtworkSuccessful implements FetchScannedArtwork {
  const factory FetchScannedArtworkSuccessful(final Artwork scannedArtwork) = _$FetchScannedArtworkSuccessfulImpl;

  Artwork get scannedArtwork;
  @JsonKey(ignore: true)
  _$$FetchScannedArtworkSuccessfulImplCopyWith<_$FetchScannedArtworkSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchScannedArtworkErrorImplCopyWith<$Res> {
  factory _$$FetchScannedArtworkErrorImplCopyWith(
          _$FetchScannedArtworkErrorImpl value, $Res Function(_$FetchScannedArtworkErrorImpl) then) =
      __$$FetchScannedArtworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$FetchScannedArtworkErrorImplCopyWithImpl<$Res>
    extends _$FetchScannedArtworkCopyWithImpl<$Res, _$FetchScannedArtworkErrorImpl>
    implements _$$FetchScannedArtworkErrorImplCopyWith<$Res> {
  __$$FetchScannedArtworkErrorImplCopyWithImpl(
      _$FetchScannedArtworkErrorImpl _value, $Res Function(_$FetchScannedArtworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$FetchScannedArtworkErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$FetchScannedArtworkErrorImpl implements FetchScannedArtworkError {
  const _$FetchScannedArtworkErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'FetchScannedArtwork.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchScannedArtworkErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchScannedArtworkErrorImplCopyWith<_$FetchScannedArtworkErrorImpl> get copyWith =>
      __$$FetchScannedArtworkErrorImplCopyWithImpl<_$FetchScannedArtworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artworkId) $default, {
    required TResult Function(Artwork scannedArtwork) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artworkId)? $default, {
    TResult? Function(Artwork scannedArtwork)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artworkId)? $default, {
    TResult Function(Artwork scannedArtwork)? successful,
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
    TResult Function(FetchScannedArtworkStart value) $default, {
    required TResult Function(FetchScannedArtworkSuccessful value) successful,
    required TResult Function(FetchScannedArtworkError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchScannedArtworkStart value)? $default, {
    TResult? Function(FetchScannedArtworkSuccessful value)? successful,
    TResult? Function(FetchScannedArtworkError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchScannedArtworkStart value)? $default, {
    TResult Function(FetchScannedArtworkSuccessful value)? successful,
    TResult Function(FetchScannedArtworkError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchScannedArtworkError implements FetchScannedArtwork, ErrorAction {
  const factory FetchScannedArtworkError(final Object error, final StackTrace stackTrace) =
      _$FetchScannedArtworkErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$FetchScannedArtworkErrorImplCopyWith<_$FetchScannedArtworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
