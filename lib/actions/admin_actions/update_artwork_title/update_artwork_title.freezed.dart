// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkTitle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId) $default, {
    required TResult Function(String newTitle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newTitle, String artworkId)? $default, {
    TResult? Function(String newTitle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId)? $default, {
    TResult Function(String newTitle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value) $default, {
    required TResult Function(UpdateArtworkTitleSuccessful value) successful,
    required TResult Function(UpdateArtworkTitleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTitleStart value)? $default, {
    TResult? Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult? Function(UpdateArtworkTitleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value)? $default, {
    TResult Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult Function(UpdateArtworkTitleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkTitleCopyWith<$Res> {
  factory $UpdateArtworkTitleCopyWith(
          UpdateArtworkTitle value, $Res Function(UpdateArtworkTitle) then) =
      _$UpdateArtworkTitleCopyWithImpl<$Res, UpdateArtworkTitle>;
}

/// @nodoc
class _$UpdateArtworkTitleCopyWithImpl<$Res, $Val extends UpdateArtworkTitle>
    implements $UpdateArtworkTitleCopyWith<$Res> {
  _$UpdateArtworkTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkTitleStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkTitleStartImplCopyWith(
          _$UpdateArtworkTitleStartImpl value,
          $Res Function(_$UpdateArtworkTitleStartImpl) then) =
      __$$UpdateArtworkTitleStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newTitle, String artworkId});
}

/// @nodoc
class __$$UpdateArtworkTitleStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTitleCopyWithImpl<$Res,
        _$UpdateArtworkTitleStartImpl>
    implements _$$UpdateArtworkTitleStartImplCopyWith<$Res> {
  __$$UpdateArtworkTitleStartImplCopyWithImpl(
      _$UpdateArtworkTitleStartImpl _value,
      $Res Function(_$UpdateArtworkTitleStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTitle = null,
    Object? artworkId = null,
  }) {
    return _then(_$UpdateArtworkTitleStartImpl(
      newTitle: null == newTitle
          ? _value.newTitle
          : newTitle // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTitleStartImpl implements UpdateArtworkTitleStart {
  const _$UpdateArtworkTitleStartImpl(
      {required this.newTitle, required this.artworkId});

  @override
  final String newTitle;
  @override
  final String artworkId;

  @override
  String toString() {
    return 'UpdateArtworkTitle(newTitle: $newTitle, artworkId: $artworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTitleStartImpl &&
            (identical(other.newTitle, newTitle) ||
                other.newTitle == newTitle) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTitle, artworkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkTitleStartImplCopyWith<_$UpdateArtworkTitleStartImpl>
      get copyWith => __$$UpdateArtworkTitleStartImplCopyWithImpl<
          _$UpdateArtworkTitleStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId) $default, {
    required TResult Function(String newTitle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newTitle, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newTitle, String artworkId)? $default, {
    TResult? Function(String newTitle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newTitle, artworkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId)? $default, {
    TResult Function(String newTitle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newTitle, artworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value) $default, {
    required TResult Function(UpdateArtworkTitleSuccessful value) successful,
    required TResult Function(UpdateArtworkTitleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTitleStart value)? $default, {
    TResult? Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult? Function(UpdateArtworkTitleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value)? $default, {
    TResult Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult Function(UpdateArtworkTitleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTitleStart implements UpdateArtworkTitle {
  const factory UpdateArtworkTitleStart(
      {required final String newTitle,
      required final String artworkId}) = _$UpdateArtworkTitleStartImpl;

  String get newTitle;
  String get artworkId;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTitleStartImplCopyWith<_$UpdateArtworkTitleStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkTitleSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkTitleSuccessfulImplCopyWith(
          _$UpdateArtworkTitleSuccessfulImpl value,
          $Res Function(_$UpdateArtworkTitleSuccessfulImpl) then) =
      __$$UpdateArtworkTitleSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newTitle});
}

/// @nodoc
class __$$UpdateArtworkTitleSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTitleCopyWithImpl<$Res,
        _$UpdateArtworkTitleSuccessfulImpl>
    implements _$$UpdateArtworkTitleSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkTitleSuccessfulImplCopyWithImpl(
      _$UpdateArtworkTitleSuccessfulImpl _value,
      $Res Function(_$UpdateArtworkTitleSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTitle = null,
  }) {
    return _then(_$UpdateArtworkTitleSuccessfulImpl(
      null == newTitle
          ? _value.newTitle
          : newTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTitleSuccessfulImpl
    implements UpdateArtworkTitleSuccessful {
  const _$UpdateArtworkTitleSuccessfulImpl(this.newTitle);

  @override
  final String newTitle;

  @override
  String toString() {
    return 'UpdateArtworkTitle.successful(newTitle: $newTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTitleSuccessfulImpl &&
            (identical(other.newTitle, newTitle) ||
                other.newTitle == newTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkTitleSuccessfulImplCopyWith<
          _$UpdateArtworkTitleSuccessfulImpl>
      get copyWith => __$$UpdateArtworkTitleSuccessfulImplCopyWithImpl<
          _$UpdateArtworkTitleSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId) $default, {
    required TResult Function(String newTitle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newTitle, String artworkId)? $default, {
    TResult? Function(String newTitle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId)? $default, {
    TResult Function(String newTitle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value) $default, {
    required TResult Function(UpdateArtworkTitleSuccessful value) successful,
    required TResult Function(UpdateArtworkTitleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTitleStart value)? $default, {
    TResult? Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult? Function(UpdateArtworkTitleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value)? $default, {
    TResult Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult Function(UpdateArtworkTitleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTitleSuccessful implements UpdateArtworkTitle {
  const factory UpdateArtworkTitleSuccessful(final String newTitle) =
      _$UpdateArtworkTitleSuccessfulImpl;

  String get newTitle;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTitleSuccessfulImplCopyWith<
          _$UpdateArtworkTitleSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkTitleErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkTitleErrorImplCopyWith(
          _$UpdateArtworkTitleErrorImpl value,
          $Res Function(_$UpdateArtworkTitleErrorImpl) then) =
      __$$UpdateArtworkTitleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkTitleErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkTitleCopyWithImpl<$Res,
        _$UpdateArtworkTitleErrorImpl>
    implements _$$UpdateArtworkTitleErrorImplCopyWith<$Res> {
  __$$UpdateArtworkTitleErrorImplCopyWithImpl(
      _$UpdateArtworkTitleErrorImpl _value,
      $Res Function(_$UpdateArtworkTitleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkTitleErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkTitleErrorImpl implements UpdateArtworkTitleError {
  const _$UpdateArtworkTitleErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkTitle.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkTitleErrorImpl &&
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
  _$$UpdateArtworkTitleErrorImplCopyWith<_$UpdateArtworkTitleErrorImpl>
      get copyWith => __$$UpdateArtworkTitleErrorImplCopyWithImpl<
          _$UpdateArtworkTitleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId) $default, {
    required TResult Function(String newTitle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newTitle, String artworkId)? $default, {
    TResult? Function(String newTitle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newTitle, String artworkId)? $default, {
    TResult Function(String newTitle)? successful,
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
    TResult Function(UpdateArtworkTitleStart value) $default, {
    required TResult Function(UpdateArtworkTitleSuccessful value) successful,
    required TResult Function(UpdateArtworkTitleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkTitleStart value)? $default, {
    TResult? Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult? Function(UpdateArtworkTitleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkTitleStart value)? $default, {
    TResult Function(UpdateArtworkTitleSuccessful value)? successful,
    TResult Function(UpdateArtworkTitleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkTitleError
    implements UpdateArtworkTitle, ErrorAction {
  const factory UpdateArtworkTitleError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkTitleErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkTitleErrorImplCopyWith<_$UpdateArtworkTitleErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
