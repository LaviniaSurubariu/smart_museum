// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favourite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddFavourite {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddFavouriteStart value) $default, {
    required TResult Function(AddFavouriteSuccessful value) successful,
    required TResult Function(AddFavouriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddFavouriteStart value)? $default, {
    TResult? Function(AddFavouriteSuccessful value)? successful,
    TResult? Function(AddFavouriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddFavouriteStart value)? $default, {
    TResult Function(AddFavouriteSuccessful value)? successful,
    TResult Function(AddFavouriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavouriteCopyWith<$Res> {
  factory $AddFavouriteCopyWith(AddFavourite value, $Res Function(AddFavourite) then) =
      _$AddFavouriteCopyWithImpl<$Res, AddFavourite>;
}

/// @nodoc
class _$AddFavouriteCopyWithImpl<$Res, $Val extends AddFavourite> implements $AddFavouriteCopyWith<$Res> {
  _$AddFavouriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddFavouriteStartImplCopyWith<$Res> {
  factory _$$AddFavouriteStartImplCopyWith(_$AddFavouriteStartImpl value, $Res Function(_$AddFavouriteStartImpl) then) =
      __$$AddFavouriteStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName});
}

/// @nodoc
class __$$AddFavouriteStartImplCopyWithImpl<$Res> extends _$AddFavouriteCopyWithImpl<$Res, _$AddFavouriteStartImpl>
    implements _$$AddFavouriteStartImplCopyWith<$Res> {
  __$$AddFavouriteStartImplCopyWithImpl(_$AddFavouriteStartImpl _value, $Res Function(_$AddFavouriteStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? artworkId = null,
    Object? artworkTitle = null,
    Object? artworkPictureUrl = null,
    Object? artistName = null,
  }) {
    return _then(_$AddFavouriteStartImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
      artworkTitle: null == artworkTitle
          ? _value.artworkTitle
          : artworkTitle // ignore: cast_nullable_to_non_nullable
              as String,
      artworkPictureUrl: null == artworkPictureUrl
          ? _value.artworkPictureUrl
          : artworkPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavouriteStartImpl implements AddFavouriteStart {
  const _$AddFavouriteStartImpl(
      {required this.userId,
      required this.artworkId,
      required this.artworkTitle,
      required this.artworkPictureUrl,
      required this.artistName});

  @override
  final String userId;
  @override
  final String artworkId;
  @override
  final String artworkTitle;
  @override
  final String artworkPictureUrl;
  @override
  final String artistName;

  @override
  String toString() {
    return 'AddFavourite(userId: $userId, artworkId: $artworkId, artworkTitle: $artworkTitle, artworkPictureUrl: $artworkPictureUrl, artistName: $artistName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteStartImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId) &&
            (identical(other.artworkTitle, artworkTitle) || other.artworkTitle == artworkTitle) &&
            (identical(other.artworkPictureUrl, artworkPictureUrl) || other.artworkPictureUrl == artworkPictureUrl) &&
            (identical(other.artistName, artistName) || other.artistName == artistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, artworkId, artworkTitle, artworkPictureUrl, artistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteStartImplCopyWith<_$AddFavouriteStartImpl> get copyWith =>
      __$$AddFavouriteStartImplCopyWithImpl<_$AddFavouriteStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId, artworkId, artworkTitle, artworkPictureUrl, artistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId, artworkId, artworkTitle, artworkPictureUrl, artistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId, artworkId, artworkTitle, artworkPictureUrl, artistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddFavouriteStart value) $default, {
    required TResult Function(AddFavouriteSuccessful value) successful,
    required TResult Function(AddFavouriteError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddFavouriteStart value)? $default, {
    TResult? Function(AddFavouriteSuccessful value)? successful,
    TResult? Function(AddFavouriteError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddFavouriteStart value)? $default, {
    TResult Function(AddFavouriteSuccessful value)? successful,
    TResult Function(AddFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteStart implements AddFavourite {
  const factory AddFavouriteStart(
      {required final String userId,
      required final String artworkId,
      required final String artworkTitle,
      required final String artworkPictureUrl,
      required final String artistName}) = _$AddFavouriteStartImpl;

  String get userId;
  String get artworkId;
  String get artworkTitle;
  String get artworkPictureUrl;
  String get artistName;
  @JsonKey(ignore: true)
  _$$AddFavouriteStartImplCopyWith<_$AddFavouriteStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavouriteSuccessfulImplCopyWith<$Res> {
  factory _$$AddFavouriteSuccessfulImplCopyWith(
          _$AddFavouriteSuccessfulImpl value, $Res Function(_$AddFavouriteSuccessfulImpl) then) =
      __$$AddFavouriteSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddFavouriteSuccessfulImplCopyWithImpl<$Res>
    extends _$AddFavouriteCopyWithImpl<$Res, _$AddFavouriteSuccessfulImpl>
    implements _$$AddFavouriteSuccessfulImplCopyWith<$Res> {
  __$$AddFavouriteSuccessfulImplCopyWithImpl(
      _$AddFavouriteSuccessfulImpl _value, $Res Function(_$AddFavouriteSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddFavouriteSuccessfulImpl implements AddFavouriteSuccessful {
  const _$AddFavouriteSuccessfulImpl();

  @override
  String toString() {
    return 'AddFavourite.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AddFavouriteSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddFavouriteStart value) $default, {
    required TResult Function(AddFavouriteSuccessful value) successful,
    required TResult Function(AddFavouriteError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddFavouriteStart value)? $default, {
    TResult? Function(AddFavouriteSuccessful value)? successful,
    TResult? Function(AddFavouriteError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddFavouriteStart value)? $default, {
    TResult Function(AddFavouriteSuccessful value)? successful,
    TResult Function(AddFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteSuccessful implements AddFavourite {
  const factory AddFavouriteSuccessful() = _$AddFavouriteSuccessfulImpl;
}

/// @nodoc
abstract class _$$AddFavouriteErrorImplCopyWith<$Res> {
  factory _$$AddFavouriteErrorImplCopyWith(_$AddFavouriteErrorImpl value, $Res Function(_$AddFavouriteErrorImpl) then) =
      __$$AddFavouriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddFavouriteErrorImplCopyWithImpl<$Res> extends _$AddFavouriteCopyWithImpl<$Res, _$AddFavouriteErrorImpl>
    implements _$$AddFavouriteErrorImplCopyWith<$Res> {
  __$$AddFavouriteErrorImplCopyWithImpl(_$AddFavouriteErrorImpl _value, $Res Function(_$AddFavouriteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddFavouriteErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddFavouriteErrorImpl implements AddFavouriteError {
  const _$AddFavouriteErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddFavourite.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteErrorImplCopyWith<_$AddFavouriteErrorImpl> get copyWith =>
      __$$AddFavouriteErrorImplCopyWithImpl<_$AddFavouriteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String artworkId, String artworkTitle, String artworkPictureUrl, String artistName)?
        $default, {
    TResult Function()? successful,
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
    TResult Function(AddFavouriteStart value) $default, {
    required TResult Function(AddFavouriteSuccessful value) successful,
    required TResult Function(AddFavouriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddFavouriteStart value)? $default, {
    TResult? Function(AddFavouriteSuccessful value)? successful,
    TResult? Function(AddFavouriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddFavouriteStart value)? $default, {
    TResult Function(AddFavouriteSuccessful value)? successful,
    TResult Function(AddFavouriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteError implements AddFavourite, ErrorAction {
  const factory AddFavouriteError(final Object error, final StackTrace stackTrace) = _$AddFavouriteErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddFavouriteErrorImplCopyWith<_$AddFavouriteErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
