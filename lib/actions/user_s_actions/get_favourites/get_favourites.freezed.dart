// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favourites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetFavourites {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(List<Favourite> favourites) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(List<Favourite> favourites)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(List<Favourite> favourites)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFavouritesStart value) $default, {
    required TResult Function(GetFavouritesSuccessful value) successful,
    required TResult Function(GetFavouritesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetFavouritesStart value)? $default, {
    TResult? Function(GetFavouritesSuccessful value)? successful,
    TResult? Function(GetFavouritesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFavouritesStart value)? $default, {
    TResult Function(GetFavouritesSuccessful value)? successful,
    TResult Function(GetFavouritesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavouritesCopyWith<$Res> {
  factory $GetFavouritesCopyWith(GetFavourites value, $Res Function(GetFavourites) then) =
      _$GetFavouritesCopyWithImpl<$Res, GetFavourites>;
}

/// @nodoc
class _$GetFavouritesCopyWithImpl<$Res, $Val extends GetFavourites> implements $GetFavouritesCopyWith<$Res> {
  _$GetFavouritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavouritesStartImplCopyWith<$Res> {
  factory _$$GetFavouritesStartImplCopyWith(
          _$GetFavouritesStartImpl value, $Res Function(_$GetFavouritesStartImpl) then) =
      __$$GetFavouritesStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetFavouritesStartImplCopyWithImpl<$Res> extends _$GetFavouritesCopyWithImpl<$Res, _$GetFavouritesStartImpl>
    implements _$$GetFavouritesStartImplCopyWith<$Res> {
  __$$GetFavouritesStartImplCopyWithImpl(_$GetFavouritesStartImpl _value, $Res Function(_$GetFavouritesStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetFavouritesStartImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFavouritesStartImpl implements GetFavouritesStart {
  const _$GetFavouritesStartImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'GetFavourites(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouritesStartImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavouritesStartImplCopyWith<_$GetFavouritesStartImpl> get copyWith =>
      __$$GetFavouritesStartImplCopyWithImpl<_$GetFavouritesStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(List<Favourite> favourites) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(List<Favourite> favourites)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(List<Favourite> favourites)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFavouritesStart value) $default, {
    required TResult Function(GetFavouritesSuccessful value) successful,
    required TResult Function(GetFavouritesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetFavouritesStart value)? $default, {
    TResult? Function(GetFavouritesSuccessful value)? successful,
    TResult? Function(GetFavouritesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFavouritesStart value)? $default, {
    TResult Function(GetFavouritesSuccessful value)? successful,
    TResult Function(GetFavouritesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetFavouritesStart implements GetFavourites {
  const factory GetFavouritesStart({required final String userId}) = _$GetFavouritesStartImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetFavouritesStartImplCopyWith<_$GetFavouritesStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavouritesSuccessfulImplCopyWith<$Res> {
  factory _$$GetFavouritesSuccessfulImplCopyWith(
          _$GetFavouritesSuccessfulImpl value, $Res Function(_$GetFavouritesSuccessfulImpl) then) =
      __$$GetFavouritesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Favourite> favourites});
}

/// @nodoc
class __$$GetFavouritesSuccessfulImplCopyWithImpl<$Res>
    extends _$GetFavouritesCopyWithImpl<$Res, _$GetFavouritesSuccessfulImpl>
    implements _$$GetFavouritesSuccessfulImplCopyWith<$Res> {
  __$$GetFavouritesSuccessfulImplCopyWithImpl(
      _$GetFavouritesSuccessfulImpl _value, $Res Function(_$GetFavouritesSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favourites = null,
  }) {
    return _then(_$GetFavouritesSuccessfulImpl(
      null == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<Favourite>,
    ));
  }
}

/// @nodoc

class _$GetFavouritesSuccessfulImpl implements GetFavouritesSuccessful {
  const _$GetFavouritesSuccessfulImpl(final List<Favourite> favourites) : _favourites = favourites;

  final List<Favourite> _favourites;
  @override
  List<Favourite> get favourites {
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favourites);
  }

  @override
  String toString() {
    return 'GetFavourites.successful(favourites: $favourites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouritesSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._favourites, _favourites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_favourites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavouritesSuccessfulImplCopyWith<_$GetFavouritesSuccessfulImpl> get copyWith =>
      __$$GetFavouritesSuccessfulImplCopyWithImpl<_$GetFavouritesSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(List<Favourite> favourites) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(favourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(List<Favourite> favourites)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(favourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(List<Favourite> favourites)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(favourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFavouritesStart value) $default, {
    required TResult Function(GetFavouritesSuccessful value) successful,
    required TResult Function(GetFavouritesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetFavouritesStart value)? $default, {
    TResult? Function(GetFavouritesSuccessful value)? successful,
    TResult? Function(GetFavouritesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFavouritesStart value)? $default, {
    TResult Function(GetFavouritesSuccessful value)? successful,
    TResult Function(GetFavouritesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetFavouritesSuccessful implements GetFavourites {
  const factory GetFavouritesSuccessful(final List<Favourite> favourites) = _$GetFavouritesSuccessfulImpl;

  List<Favourite> get favourites;
  @JsonKey(ignore: true)
  _$$GetFavouritesSuccessfulImplCopyWith<_$GetFavouritesSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavouritesErrorImplCopyWith<$Res> {
  factory _$$GetFavouritesErrorImplCopyWith(
          _$GetFavouritesErrorImpl value, $Res Function(_$GetFavouritesErrorImpl) then) =
      __$$GetFavouritesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetFavouritesErrorImplCopyWithImpl<$Res> extends _$GetFavouritesCopyWithImpl<$Res, _$GetFavouritesErrorImpl>
    implements _$$GetFavouritesErrorImplCopyWith<$Res> {
  __$$GetFavouritesErrorImplCopyWithImpl(_$GetFavouritesErrorImpl _value, $Res Function(_$GetFavouritesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetFavouritesErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetFavouritesErrorImpl implements GetFavouritesError {
  const _$GetFavouritesErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetFavourites.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouritesErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavouritesErrorImplCopyWith<_$GetFavouritesErrorImpl> get copyWith =>
      __$$GetFavouritesErrorImplCopyWithImpl<_$GetFavouritesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId) $default, {
    required TResult Function(List<Favourite> favourites) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId)? $default, {
    TResult? Function(List<Favourite> favourites)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId)? $default, {
    TResult Function(List<Favourite> favourites)? successful,
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
    TResult Function(GetFavouritesStart value) $default, {
    required TResult Function(GetFavouritesSuccessful value) successful,
    required TResult Function(GetFavouritesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetFavouritesStart value)? $default, {
    TResult? Function(GetFavouritesSuccessful value)? successful,
    TResult? Function(GetFavouritesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFavouritesStart value)? $default, {
    TResult Function(GetFavouritesSuccessful value)? successful,
    TResult Function(GetFavouritesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetFavouritesError implements GetFavourites, ErrorAction {
  const factory GetFavouritesError(final Object error, final StackTrace stackTrace) = _$GetFavouritesErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetFavouritesErrorImplCopyWith<_$GetFavouritesErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
