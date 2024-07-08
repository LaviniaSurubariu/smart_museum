// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_selected_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchSelectedArtist {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artistId) $default, {
    required TResult Function(Artist selectedArtist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artistId)? $default, {
    TResult? Function(Artist selectedArtist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artistId)? $default, {
    TResult Function(Artist selectedArtist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value) $default, {
    required TResult Function(FetchSelectedArtistSuccessful value) successful,
    required TResult Function(FetchSelectedArtistError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchSelectedArtistStart value)? $default, {
    TResult? Function(FetchSelectedArtistSuccessful value)? successful,
    TResult? Function(FetchSelectedArtistError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value)? $default, {
    TResult Function(FetchSelectedArtistSuccessful value)? successful,
    TResult Function(FetchSelectedArtistError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSelectedArtistCopyWith<$Res> {
  factory $FetchSelectedArtistCopyWith(FetchSelectedArtist value, $Res Function(FetchSelectedArtist) then) =
      _$FetchSelectedArtistCopyWithImpl<$Res, FetchSelectedArtist>;
}

/// @nodoc
class _$FetchSelectedArtistCopyWithImpl<$Res, $Val extends FetchSelectedArtist>
    implements $FetchSelectedArtistCopyWith<$Res> {
  _$FetchSelectedArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSelectedArtistStartImplCopyWith<$Res> {
  factory _$$FetchSelectedArtistStartImplCopyWith(
          _$FetchSelectedArtistStartImpl value, $Res Function(_$FetchSelectedArtistStartImpl) then) =
      __$$FetchSelectedArtistStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$FetchSelectedArtistStartImplCopyWithImpl<$Res>
    extends _$FetchSelectedArtistCopyWithImpl<$Res, _$FetchSelectedArtistStartImpl>
    implements _$$FetchSelectedArtistStartImplCopyWith<$Res> {
  __$$FetchSelectedArtistStartImplCopyWithImpl(
      _$FetchSelectedArtistStartImpl _value, $Res Function(_$FetchSelectedArtistStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$FetchSelectedArtistStartImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSelectedArtistStartImpl implements FetchSelectedArtistStart {
  const _$FetchSelectedArtistStartImpl({required this.artistId});

  @override
  final String artistId;

  @override
  String toString() {
    return 'FetchSelectedArtist(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSelectedArtistStartImpl &&
            (identical(other.artistId, artistId) || other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSelectedArtistStartImplCopyWith<_$FetchSelectedArtistStartImpl> get copyWith =>
      __$$FetchSelectedArtistStartImplCopyWithImpl<_$FetchSelectedArtistStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artistId) $default, {
    required TResult Function(Artist selectedArtist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artistId)? $default, {
    TResult? Function(Artist selectedArtist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artistId)? $default, {
    TResult Function(Artist selectedArtist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value) $default, {
    required TResult Function(FetchSelectedArtistSuccessful value) successful,
    required TResult Function(FetchSelectedArtistError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchSelectedArtistStart value)? $default, {
    TResult? Function(FetchSelectedArtistSuccessful value)? successful,
    TResult? Function(FetchSelectedArtistError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value)? $default, {
    TResult Function(FetchSelectedArtistSuccessful value)? successful,
    TResult Function(FetchSelectedArtistError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FetchSelectedArtistStart implements FetchSelectedArtist {
  const factory FetchSelectedArtistStart({required final String artistId}) = _$FetchSelectedArtistStartImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$FetchSelectedArtistStartImplCopyWith<_$FetchSelectedArtistStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSelectedArtistSuccessfulImplCopyWith<$Res> {
  factory _$$FetchSelectedArtistSuccessfulImplCopyWith(
          _$FetchSelectedArtistSuccessfulImpl value, $Res Function(_$FetchSelectedArtistSuccessfulImpl) then) =
      __$$FetchSelectedArtistSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Artist selectedArtist});

  $ArtistCopyWith<$Res> get selectedArtist;
}

/// @nodoc
class __$$FetchSelectedArtistSuccessfulImplCopyWithImpl<$Res>
    extends _$FetchSelectedArtistCopyWithImpl<$Res, _$FetchSelectedArtistSuccessfulImpl>
    implements _$$FetchSelectedArtistSuccessfulImplCopyWith<$Res> {
  __$$FetchSelectedArtistSuccessfulImplCopyWithImpl(
      _$FetchSelectedArtistSuccessfulImpl _value, $Res Function(_$FetchSelectedArtistSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedArtist = null,
  }) {
    return _then(_$FetchSelectedArtistSuccessfulImpl(
      null == selectedArtist
          ? _value.selectedArtist
          : selectedArtist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get selectedArtist {
    return $ArtistCopyWith<$Res>(_value.selectedArtist, (value) {
      return _then(_value.copyWith(selectedArtist: value));
    });
  }
}

/// @nodoc

class _$FetchSelectedArtistSuccessfulImpl implements FetchSelectedArtistSuccessful {
  const _$FetchSelectedArtistSuccessfulImpl(this.selectedArtist);

  @override
  final Artist selectedArtist;

  @override
  String toString() {
    return 'FetchSelectedArtist.successful(selectedArtist: $selectedArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSelectedArtistSuccessfulImpl &&
            (identical(other.selectedArtist, selectedArtist) || other.selectedArtist == selectedArtist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedArtist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSelectedArtistSuccessfulImplCopyWith<_$FetchSelectedArtistSuccessfulImpl> get copyWith =>
      __$$FetchSelectedArtistSuccessfulImplCopyWithImpl<_$FetchSelectedArtistSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artistId) $default, {
    required TResult Function(Artist selectedArtist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(selectedArtist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artistId)? $default, {
    TResult? Function(Artist selectedArtist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(selectedArtist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artistId)? $default, {
    TResult Function(Artist selectedArtist)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(selectedArtist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value) $default, {
    required TResult Function(FetchSelectedArtistSuccessful value) successful,
    required TResult Function(FetchSelectedArtistError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchSelectedArtistStart value)? $default, {
    TResult? Function(FetchSelectedArtistSuccessful value)? successful,
    TResult? Function(FetchSelectedArtistError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value)? $default, {
    TResult Function(FetchSelectedArtistSuccessful value)? successful,
    TResult Function(FetchSelectedArtistError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class FetchSelectedArtistSuccessful implements FetchSelectedArtist {
  const factory FetchSelectedArtistSuccessful(final Artist selectedArtist) = _$FetchSelectedArtistSuccessfulImpl;

  Artist get selectedArtist;
  @JsonKey(ignore: true)
  _$$FetchSelectedArtistSuccessfulImplCopyWith<_$FetchSelectedArtistSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSelectedArtistErrorImplCopyWith<$Res> {
  factory _$$FetchSelectedArtistErrorImplCopyWith(
          _$FetchSelectedArtistErrorImpl value, $Res Function(_$FetchSelectedArtistErrorImpl) then) =
      __$$FetchSelectedArtistErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$FetchSelectedArtistErrorImplCopyWithImpl<$Res>
    extends _$FetchSelectedArtistCopyWithImpl<$Res, _$FetchSelectedArtistErrorImpl>
    implements _$$FetchSelectedArtistErrorImplCopyWith<$Res> {
  __$$FetchSelectedArtistErrorImplCopyWithImpl(
      _$FetchSelectedArtistErrorImpl _value, $Res Function(_$FetchSelectedArtistErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$FetchSelectedArtistErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$FetchSelectedArtistErrorImpl implements FetchSelectedArtistError {
  const _$FetchSelectedArtistErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'FetchSelectedArtist.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSelectedArtistErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSelectedArtistErrorImplCopyWith<_$FetchSelectedArtistErrorImpl> get copyWith =>
      __$$FetchSelectedArtistErrorImplCopyWithImpl<_$FetchSelectedArtistErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String artistId) $default, {
    required TResult Function(Artist selectedArtist) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String artistId)? $default, {
    TResult? Function(Artist selectedArtist)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String artistId)? $default, {
    TResult Function(Artist selectedArtist)? successful,
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
    TResult Function(FetchSelectedArtistStart value) $default, {
    required TResult Function(FetchSelectedArtistSuccessful value) successful,
    required TResult Function(FetchSelectedArtistError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(FetchSelectedArtistStart value)? $default, {
    TResult? Function(FetchSelectedArtistSuccessful value)? successful,
    TResult? Function(FetchSelectedArtistError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchSelectedArtistStart value)? $default, {
    TResult Function(FetchSelectedArtistSuccessful value)? successful,
    TResult Function(FetchSelectedArtistError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchSelectedArtistError implements FetchSelectedArtist, ErrorAction {
  const factory FetchSelectedArtistError(final Object error, final StackTrace stackTrace) =
      _$FetchSelectedArtistErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$FetchSelectedArtistErrorImplCopyWith<_$FetchSelectedArtistErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
