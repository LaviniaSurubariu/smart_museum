// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_top_artists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetTopArtists {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artist> artists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artist> artists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artist> artists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value) $default, {
    required TResult Function(GetTopArtistsSuccessful value) successful,
    required TResult Function(GetTopArtistsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetTopArtistsStart value)? $default, {
    TResult? Function(GetTopArtistsSuccessful value)? successful,
    TResult? Function(GetTopArtistsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value)? $default, {
    TResult Function(GetTopArtistsSuccessful value)? successful,
    TResult Function(GetTopArtistsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTopArtistsCopyWith<$Res> {
  factory $GetTopArtistsCopyWith(GetTopArtists value, $Res Function(GetTopArtists) then) =
      _$GetTopArtistsCopyWithImpl<$Res, GetTopArtists>;
}

/// @nodoc
class _$GetTopArtistsCopyWithImpl<$Res, $Val extends GetTopArtists> implements $GetTopArtistsCopyWith<$Res> {
  _$GetTopArtistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTopArtistsStartImplCopyWith<$Res> {
  factory _$$GetTopArtistsStartImplCopyWith(
          _$GetTopArtistsStartImpl value, $Res Function(_$GetTopArtistsStartImpl) then) =
      __$$GetTopArtistsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopArtistsStartImplCopyWithImpl<$Res> extends _$GetTopArtistsCopyWithImpl<$Res, _$GetTopArtistsStartImpl>
    implements _$$GetTopArtistsStartImplCopyWith<$Res> {
  __$$GetTopArtistsStartImplCopyWithImpl(_$GetTopArtistsStartImpl _value, $Res Function(_$GetTopArtistsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopArtistsStartImpl implements GetTopArtistsStart {
  const _$GetTopArtistsStartImpl();

  @override
  String toString() {
    return 'GetTopArtists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetTopArtistsStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artist> artists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artist> artists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artist> artists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value) $default, {
    required TResult Function(GetTopArtistsSuccessful value) successful,
    required TResult Function(GetTopArtistsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetTopArtistsStart value)? $default, {
    TResult? Function(GetTopArtistsSuccessful value)? successful,
    TResult? Function(GetTopArtistsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value)? $default, {
    TResult Function(GetTopArtistsSuccessful value)? successful,
    TResult Function(GetTopArtistsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetTopArtistsStart implements GetTopArtists {
  const factory GetTopArtistsStart() = _$GetTopArtistsStartImpl;
}

/// @nodoc
abstract class _$$GetTopArtistsSuccessfulImplCopyWith<$Res> {
  factory _$$GetTopArtistsSuccessfulImplCopyWith(
          _$GetTopArtistsSuccessfulImpl value, $Res Function(_$GetTopArtistsSuccessfulImpl) then) =
      __$$GetTopArtistsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$GetTopArtistsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetTopArtistsCopyWithImpl<$Res, _$GetTopArtistsSuccessfulImpl>
    implements _$$GetTopArtistsSuccessfulImplCopyWith<$Res> {
  __$$GetTopArtistsSuccessfulImplCopyWithImpl(
      _$GetTopArtistsSuccessfulImpl _value, $Res Function(_$GetTopArtistsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$GetTopArtistsSuccessfulImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$GetTopArtistsSuccessfulImpl implements GetTopArtistsSuccessful {
  const _$GetTopArtistsSuccessfulImpl({required final List<Artist> artists}) : _artists = artists;

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'GetTopArtists.successful(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTopArtistsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTopArtistsSuccessfulImplCopyWith<_$GetTopArtistsSuccessfulImpl> get copyWith =>
      __$$GetTopArtistsSuccessfulImplCopyWithImpl<_$GetTopArtistsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artist> artists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artist> artists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artist> artists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value) $default, {
    required TResult Function(GetTopArtistsSuccessful value) successful,
    required TResult Function(GetTopArtistsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetTopArtistsStart value)? $default, {
    TResult? Function(GetTopArtistsSuccessful value)? successful,
    TResult? Function(GetTopArtistsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value)? $default, {
    TResult Function(GetTopArtistsSuccessful value)? successful,
    TResult Function(GetTopArtistsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetTopArtistsSuccessful implements GetTopArtists {
  const factory GetTopArtistsSuccessful({required final List<Artist> artists}) = _$GetTopArtistsSuccessfulImpl;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  _$$GetTopArtistsSuccessfulImplCopyWith<_$GetTopArtistsSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTopArtistsErrorImplCopyWith<$Res> {
  factory _$$GetTopArtistsErrorImplCopyWith(
          _$GetTopArtistsErrorImpl value, $Res Function(_$GetTopArtistsErrorImpl) then) =
      __$$GetTopArtistsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetTopArtistsErrorImplCopyWithImpl<$Res> extends _$GetTopArtistsCopyWithImpl<$Res, _$GetTopArtistsErrorImpl>
    implements _$$GetTopArtistsErrorImplCopyWith<$Res> {
  __$$GetTopArtistsErrorImplCopyWithImpl(_$GetTopArtistsErrorImpl _value, $Res Function(_$GetTopArtistsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetTopArtistsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetTopArtistsErrorImpl implements GetTopArtistsError {
  const _$GetTopArtistsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetTopArtists.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTopArtistsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTopArtistsErrorImplCopyWith<_$GetTopArtistsErrorImpl> get copyWith =>
      __$$GetTopArtistsErrorImplCopyWithImpl<_$GetTopArtistsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artist> artists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artist> artists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artist> artists)? successful,
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
    TResult Function(GetTopArtistsStart value) $default, {
    required TResult Function(GetTopArtistsSuccessful value) successful,
    required TResult Function(GetTopArtistsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetTopArtistsStart value)? $default, {
    TResult? Function(GetTopArtistsSuccessful value)? successful,
    TResult? Function(GetTopArtistsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetTopArtistsStart value)? $default, {
    TResult Function(GetTopArtistsSuccessful value)? successful,
    TResult Function(GetTopArtistsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetTopArtistsError implements GetTopArtists, ErrorAction {
  const factory GetTopArtistsError(final Object error, final StackTrace stackTrace) = _$GetTopArtistsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetTopArtistsErrorImplCopyWith<_$GetTopArtistsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
