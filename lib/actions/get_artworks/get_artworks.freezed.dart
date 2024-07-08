// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_artworks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetArtworks {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artwork> artworks) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artwork> artworks)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artwork> artworks)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetArtworksStart value) $default, {
    required TResult Function(GetArtworksSuccessful value) successful,
    required TResult Function(GetArtworksError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtworksStart value)? $default, {
    TResult? Function(GetArtworksSuccessful value)? successful,
    TResult? Function(GetArtworksError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtworksStart value)? $default, {
    TResult Function(GetArtworksSuccessful value)? successful,
    TResult Function(GetArtworksError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArtworksCopyWith<$Res> {
  factory $GetArtworksCopyWith(
          GetArtworks value, $Res Function(GetArtworks) then) =
      _$GetArtworksCopyWithImpl<$Res, GetArtworks>;
}

/// @nodoc
class _$GetArtworksCopyWithImpl<$Res, $Val extends GetArtworks>
    implements $GetArtworksCopyWith<$Res> {
  _$GetArtworksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArtworksStartImplCopyWith<$Res> {
  factory _$$GetArtworksStartImplCopyWith(_$GetArtworksStartImpl value,
          $Res Function(_$GetArtworksStartImpl) then) =
      __$$GetArtworksStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArtworksStartImplCopyWithImpl<$Res>
    extends _$GetArtworksCopyWithImpl<$Res, _$GetArtworksStartImpl>
    implements _$$GetArtworksStartImplCopyWith<$Res> {
  __$$GetArtworksStartImplCopyWithImpl(_$GetArtworksStartImpl _value,
      $Res Function(_$GetArtworksStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArtworksStartImpl implements GetArtworksStart {
  const _$GetArtworksStartImpl();

  @override
  String toString() {
    return 'GetArtworks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArtworksStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artwork> artworks) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artwork> artworks)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artwork> artworks)? successful,
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
    TResult Function(GetArtworksStart value) $default, {
    required TResult Function(GetArtworksSuccessful value) successful,
    required TResult Function(GetArtworksError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtworksStart value)? $default, {
    TResult? Function(GetArtworksSuccessful value)? successful,
    TResult? Function(GetArtworksError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtworksStart value)? $default, {
    TResult Function(GetArtworksSuccessful value)? successful,
    TResult Function(GetArtworksError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetArtworksStart implements GetArtworks {
  const factory GetArtworksStart() = _$GetArtworksStartImpl;
}

/// @nodoc
abstract class _$$GetArtworksSuccessfulImplCopyWith<$Res> {
  factory _$$GetArtworksSuccessfulImplCopyWith(
          _$GetArtworksSuccessfulImpl value,
          $Res Function(_$GetArtworksSuccessfulImpl) then) =
      __$$GetArtworksSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Artwork> artworks});
}

/// @nodoc
class __$$GetArtworksSuccessfulImplCopyWithImpl<$Res>
    extends _$GetArtworksCopyWithImpl<$Res, _$GetArtworksSuccessfulImpl>
    implements _$$GetArtworksSuccessfulImplCopyWith<$Res> {
  __$$GetArtworksSuccessfulImplCopyWithImpl(_$GetArtworksSuccessfulImpl _value,
      $Res Function(_$GetArtworksSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artworks = null,
  }) {
    return _then(_$GetArtworksSuccessfulImpl(
      artworks: null == artworks
          ? _value._artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>,
    ));
  }
}

/// @nodoc

class _$GetArtworksSuccessfulImpl implements GetArtworksSuccessful {
  const _$GetArtworksSuccessfulImpl({required final List<Artwork> artworks})
      : _artworks = artworks;

  final List<Artwork> _artworks;
  @override
  List<Artwork> get artworks {
    if (_artworks is EqualUnmodifiableListView) return _artworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artworks);
  }

  @override
  String toString() {
    return 'GetArtworks.successful(artworks: $artworks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtworksSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._artworks, _artworks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artworks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtworksSuccessfulImplCopyWith<_$GetArtworksSuccessfulImpl>
      get copyWith => __$$GetArtworksSuccessfulImplCopyWithImpl<
          _$GetArtworksSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artwork> artworks) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(artworks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artwork> artworks)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(artworks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artwork> artworks)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(artworks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetArtworksStart value) $default, {
    required TResult Function(GetArtworksSuccessful value) successful,
    required TResult Function(GetArtworksError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtworksStart value)? $default, {
    TResult? Function(GetArtworksSuccessful value)? successful,
    TResult? Function(GetArtworksError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtworksStart value)? $default, {
    TResult Function(GetArtworksSuccessful value)? successful,
    TResult Function(GetArtworksError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetArtworksSuccessful implements GetArtworks {
  const factory GetArtworksSuccessful({required final List<Artwork> artworks}) =
      _$GetArtworksSuccessfulImpl;

  List<Artwork> get artworks;
  @JsonKey(ignore: true)
  _$$GetArtworksSuccessfulImplCopyWith<_$GetArtworksSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArtworksErrorImplCopyWith<$Res> {
  factory _$$GetArtworksErrorImplCopyWith(_$GetArtworksErrorImpl value,
          $Res Function(_$GetArtworksErrorImpl) then) =
      __$$GetArtworksErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetArtworksErrorImplCopyWithImpl<$Res>
    extends _$GetArtworksCopyWithImpl<$Res, _$GetArtworksErrorImpl>
    implements _$$GetArtworksErrorImplCopyWith<$Res> {
  __$$GetArtworksErrorImplCopyWithImpl(_$GetArtworksErrorImpl _value,
      $Res Function(_$GetArtworksErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetArtworksErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetArtworksErrorImpl implements GetArtworksError {
  const _$GetArtworksErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetArtworks.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtworksErrorImpl &&
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
  _$$GetArtworksErrorImplCopyWith<_$GetArtworksErrorImpl> get copyWith =>
      __$$GetArtworksErrorImplCopyWithImpl<_$GetArtworksErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Artwork> artworks) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Artwork> artworks)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Artwork> artworks)? successful,
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
    TResult Function(GetArtworksStart value) $default, {
    required TResult Function(GetArtworksSuccessful value) successful,
    required TResult Function(GetArtworksError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetArtworksStart value)? $default, {
    TResult? Function(GetArtworksSuccessful value)? successful,
    TResult? Function(GetArtworksError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetArtworksStart value)? $default, {
    TResult Function(GetArtworksSuccessful value)? successful,
    TResult Function(GetArtworksError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetArtworksError implements GetArtworks, ErrorAction {
  const factory GetArtworksError(
      final Object error, final StackTrace stackTrace) = _$GetArtworksErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetArtworksErrorImplCopyWith<_$GetArtworksErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
