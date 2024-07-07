// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_artists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetArtists {
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
    TResult Function(GetArtistsStart value) $default, {
    required TResult Function(GetArtistsSuccessful value) successful,
    required TResult Function(GetArtistsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtistsStart value)? $default, {
    TResult? Function(GetArtistsSuccessful value)? successful,
    TResult? Function(GetArtistsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtistsStart value)? $default, {
    TResult Function(GetArtistsSuccessful value)? successful,
    TResult Function(GetArtistsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArtistsCopyWith<$Res> {
  factory $GetArtistsCopyWith(GetArtists value, $Res Function(GetArtists) then) =
      _$GetArtistsCopyWithImpl<$Res, GetArtists>;
}

/// @nodoc
class _$GetArtistsCopyWithImpl<$Res, $Val extends GetArtists> implements $GetArtistsCopyWith<$Res> {
  _$GetArtistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArtistsStartImplCopyWith<$Res> {
  factory _$$GetArtistsStartImplCopyWith(_$GetArtistsStartImpl value, $Res Function(_$GetArtistsStartImpl) then) =
      __$$GetArtistsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArtistsStartImplCopyWithImpl<$Res> extends _$GetArtistsCopyWithImpl<$Res, _$GetArtistsStartImpl>
    implements _$$GetArtistsStartImplCopyWith<$Res> {
  __$$GetArtistsStartImplCopyWithImpl(_$GetArtistsStartImpl _value, $Res Function(_$GetArtistsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArtistsStartImpl implements GetArtistsStart {
  const _$GetArtistsStartImpl();

  @override
  String toString() {
    return 'GetArtists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetArtistsStartImpl);
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
    TResult Function(GetArtistsStart value) $default, {
    required TResult Function(GetArtistsSuccessful value) successful,
    required TResult Function(GetArtistsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtistsStart value)? $default, {
    TResult? Function(GetArtistsSuccessful value)? successful,
    TResult? Function(GetArtistsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtistsStart value)? $default, {
    TResult Function(GetArtistsSuccessful value)? successful,
    TResult Function(GetArtistsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetArtistsStart implements GetArtists {
  const factory GetArtistsStart() = _$GetArtistsStartImpl;
}

/// @nodoc
abstract class _$$GetArtistsSuccessfulImplCopyWith<$Res> {
  factory _$$GetArtistsSuccessfulImplCopyWith(
          _$GetArtistsSuccessfulImpl value, $Res Function(_$GetArtistsSuccessfulImpl) then) =
      __$$GetArtistsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$GetArtistsSuccessfulImplCopyWithImpl<$Res> extends _$GetArtistsCopyWithImpl<$Res, _$GetArtistsSuccessfulImpl>
    implements _$$GetArtistsSuccessfulImplCopyWith<$Res> {
  __$$GetArtistsSuccessfulImplCopyWithImpl(
      _$GetArtistsSuccessfulImpl _value, $Res Function(_$GetArtistsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$GetArtistsSuccessfulImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$GetArtistsSuccessfulImpl implements GetArtistsSuccessful {
  const _$GetArtistsSuccessfulImpl({required final List<Artist> artists}) : _artists = artists;

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'GetArtists.successful(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistsSuccessfulImplCopyWith<_$GetArtistsSuccessfulImpl> get copyWith =>
      __$$GetArtistsSuccessfulImplCopyWithImpl<_$GetArtistsSuccessfulImpl>(this, _$identity);

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
    TResult Function(GetArtistsStart value) $default, {
    required TResult Function(GetArtistsSuccessful value) successful,
    required TResult Function(GetArtistsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtistsStart value)? $default, {
    TResult? Function(GetArtistsSuccessful value)? successful,
    TResult? Function(GetArtistsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtistsStart value)? $default, {
    TResult Function(GetArtistsSuccessful value)? successful,
    TResult Function(GetArtistsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetArtistsSuccessful implements GetArtists {
  const factory GetArtistsSuccessful({required final List<Artist> artists}) = _$GetArtistsSuccessfulImpl;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  _$$GetArtistsSuccessfulImplCopyWith<_$GetArtistsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArtistsErrorImplCopyWith<$Res> {
  factory _$$GetArtistsErrorImplCopyWith(_$GetArtistsErrorImpl value, $Res Function(_$GetArtistsErrorImpl) then) =
      __$$GetArtistsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetArtistsErrorImplCopyWithImpl<$Res> extends _$GetArtistsCopyWithImpl<$Res, _$GetArtistsErrorImpl>
    implements _$$GetArtistsErrorImplCopyWith<$Res> {
  __$$GetArtistsErrorImplCopyWithImpl(_$GetArtistsErrorImpl _value, $Res Function(_$GetArtistsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetArtistsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetArtistsErrorImpl implements GetArtistsError {
  const _$GetArtistsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetArtists.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistsErrorImplCopyWith<_$GetArtistsErrorImpl> get copyWith =>
      __$$GetArtistsErrorImplCopyWithImpl<_$GetArtistsErrorImpl>(this, _$identity);

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
    TResult Function(GetArtistsStart value) $default, {
    required TResult Function(GetArtistsSuccessful value) successful,
    required TResult Function(GetArtistsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtistsStart value)? $default, {
    TResult? Function(GetArtistsSuccessful value)? successful,
    TResult? Function(GetArtistsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtistsStart value)? $default, {
    TResult Function(GetArtistsSuccessful value)? successful,
    TResult Function(GetArtistsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetArtistsError implements GetArtists, ErrorAction {
  const factory GetArtistsError(final Object error, final StackTrace stackTrace) = _$GetArtistsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetArtistsErrorImplCopyWith<_$GetArtistsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
