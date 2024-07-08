// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artwork_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArtworkAudio {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl) $default, {
    required TResult Function(String newAudioPath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult? Function(String newAudioPath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult Function(String newAudioPath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value) $default, {
    required TResult Function(UpdateArtworkAudioSuccessful value) successful,
    required TResult Function(UpdateArtworkAudioError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkAudioStart value)? $default, {
    TResult? Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult? Function(UpdateArtworkAudioError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value)? $default, {
    TResult Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult Function(UpdateArtworkAudioError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtworkAudioCopyWith<$Res> {
  factory $UpdateArtworkAudioCopyWith(UpdateArtworkAudio value, $Res Function(UpdateArtworkAudio) then) =
      _$UpdateArtworkAudioCopyWithImpl<$Res, UpdateArtworkAudio>;
}

/// @nodoc
class _$UpdateArtworkAudioCopyWithImpl<$Res, $Val extends UpdateArtworkAudio>
    implements $UpdateArtworkAudioCopyWith<$Res> {
  _$UpdateArtworkAudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateArtworkAudioStartImplCopyWith<$Res> {
  factory _$$UpdateArtworkAudioStartImplCopyWith(
          _$UpdateArtworkAudioStartImpl value, $Res Function(_$UpdateArtworkAudioStartImpl) then) =
      __$$UpdateArtworkAudioStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl});
}

/// @nodoc
class __$$UpdateArtworkAudioStartImplCopyWithImpl<$Res>
    extends _$UpdateArtworkAudioCopyWithImpl<$Res, _$UpdateArtworkAudioStartImpl>
    implements _$$UpdateArtworkAudioStartImplCopyWith<$Res> {
  __$$UpdateArtworkAudioStartImplCopyWithImpl(
      _$UpdateArtworkAudioStartImpl _value, $Res Function(_$UpdateArtworkAudioStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAudioPath = null,
    Object? artworkId = null,
    Object? artworkTitle = null,
    Object? oldAudioUrl = null,
  }) {
    return _then(_$UpdateArtworkAudioStartImpl(
      newAudioPath: null == newAudioPath
          ? _value.newAudioPath
          : newAudioPath // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
      artworkTitle: null == artworkTitle
          ? _value.artworkTitle
          : artworkTitle // ignore: cast_nullable_to_non_nullable
              as String,
      oldAudioUrl: null == oldAudioUrl
          ? _value.oldAudioUrl
          : oldAudioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkAudioStartImpl implements UpdateArtworkAudioStart {
  const _$UpdateArtworkAudioStartImpl(
      {required this.newAudioPath, required this.artworkId, required this.artworkTitle, required this.oldAudioUrl});

  @override
  final String newAudioPath;
  @override
  final String artworkId;
  @override
  final String artworkTitle;
  @override
  final String oldAudioUrl;

  @override
  String toString() {
    return 'UpdateArtworkAudio(newAudioPath: $newAudioPath, artworkId: $artworkId, artworkTitle: $artworkTitle, oldAudioUrl: $oldAudioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkAudioStartImpl &&
            (identical(other.newAudioPath, newAudioPath) || other.newAudioPath == newAudioPath) &&
            (identical(other.artworkId, artworkId) || other.artworkId == artworkId) &&
            (identical(other.artworkTitle, artworkTitle) || other.artworkTitle == artworkTitle) &&
            (identical(other.oldAudioUrl, oldAudioUrl) || other.oldAudioUrl == oldAudioUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAudioPath, artworkId, artworkTitle, oldAudioUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkAudioStartImplCopyWith<_$UpdateArtworkAudioStartImpl> get copyWith =>
      __$$UpdateArtworkAudioStartImplCopyWithImpl<_$UpdateArtworkAudioStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl) $default, {
    required TResult Function(String newAudioPath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(newAudioPath, artworkId, artworkTitle, oldAudioUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult? Function(String newAudioPath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(newAudioPath, artworkId, artworkTitle, oldAudioUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult Function(String newAudioPath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(newAudioPath, artworkId, artworkTitle, oldAudioUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value) $default, {
    required TResult Function(UpdateArtworkAudioSuccessful value) successful,
    required TResult Function(UpdateArtworkAudioError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkAudioStart value)? $default, {
    TResult? Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult? Function(UpdateArtworkAudioError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value)? $default, {
    TResult Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult Function(UpdateArtworkAudioError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkAudioStart implements UpdateArtworkAudio {
  const factory UpdateArtworkAudioStart(
      {required final String newAudioPath,
      required final String artworkId,
      required final String artworkTitle,
      required final String oldAudioUrl}) = _$UpdateArtworkAudioStartImpl;

  String get newAudioPath;
  String get artworkId;
  String get artworkTitle;
  String get oldAudioUrl;
  @JsonKey(ignore: true)
  _$$UpdateArtworkAudioStartImplCopyWith<_$UpdateArtworkAudioStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkAudioSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateArtworkAudioSuccessfulImplCopyWith(
          _$UpdateArtworkAudioSuccessfulImpl value, $Res Function(_$UpdateArtworkAudioSuccessfulImpl) then) =
      __$$UpdateArtworkAudioSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newAudioPath});
}

/// @nodoc
class __$$UpdateArtworkAudioSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateArtworkAudioCopyWithImpl<$Res, _$UpdateArtworkAudioSuccessfulImpl>
    implements _$$UpdateArtworkAudioSuccessfulImplCopyWith<$Res> {
  __$$UpdateArtworkAudioSuccessfulImplCopyWithImpl(
      _$UpdateArtworkAudioSuccessfulImpl _value, $Res Function(_$UpdateArtworkAudioSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAudioPath = null,
  }) {
    return _then(_$UpdateArtworkAudioSuccessfulImpl(
      null == newAudioPath
          ? _value.newAudioPath
          : newAudioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkAudioSuccessfulImpl implements UpdateArtworkAudioSuccessful {
  const _$UpdateArtworkAudioSuccessfulImpl(this.newAudioPath);

  @override
  final String newAudioPath;

  @override
  String toString() {
    return 'UpdateArtworkAudio.successful(newAudioPath: $newAudioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkAudioSuccessfulImpl &&
            (identical(other.newAudioPath, newAudioPath) || other.newAudioPath == newAudioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAudioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkAudioSuccessfulImplCopyWith<_$UpdateArtworkAudioSuccessfulImpl> get copyWith =>
      __$$UpdateArtworkAudioSuccessfulImplCopyWithImpl<_$UpdateArtworkAudioSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl) $default, {
    required TResult Function(String newAudioPath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(newAudioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult? Function(String newAudioPath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(newAudioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult Function(String newAudioPath)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(newAudioPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value) $default, {
    required TResult Function(UpdateArtworkAudioSuccessful value) successful,
    required TResult Function(UpdateArtworkAudioError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkAudioStart value)? $default, {
    TResult? Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult? Function(UpdateArtworkAudioError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value)? $default, {
    TResult Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult Function(UpdateArtworkAudioError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkAudioSuccessful implements UpdateArtworkAudio {
  const factory UpdateArtworkAudioSuccessful(final String newAudioPath) = _$UpdateArtworkAudioSuccessfulImpl;

  String get newAudioPath;
  @JsonKey(ignore: true)
  _$$UpdateArtworkAudioSuccessfulImplCopyWith<_$UpdateArtworkAudioSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArtworkAudioErrorImplCopyWith<$Res> {
  factory _$$UpdateArtworkAudioErrorImplCopyWith(
          _$UpdateArtworkAudioErrorImpl value, $Res Function(_$UpdateArtworkAudioErrorImpl) then) =
      __$$UpdateArtworkAudioErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateArtworkAudioErrorImplCopyWithImpl<$Res>
    extends _$UpdateArtworkAudioCopyWithImpl<$Res, _$UpdateArtworkAudioErrorImpl>
    implements _$$UpdateArtworkAudioErrorImplCopyWith<$Res> {
  __$$UpdateArtworkAudioErrorImplCopyWithImpl(
      _$UpdateArtworkAudioErrorImpl _value, $Res Function(_$UpdateArtworkAudioErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateArtworkAudioErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateArtworkAudioErrorImpl implements UpdateArtworkAudioError {
  const _$UpdateArtworkAudioErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateArtworkAudio.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtworkAudioErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtworkAudioErrorImplCopyWith<_$UpdateArtworkAudioErrorImpl> get copyWith =>
      __$$UpdateArtworkAudioErrorImplCopyWithImpl<_$UpdateArtworkAudioErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl) $default, {
    required TResult Function(String newAudioPath) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult? Function(String newAudioPath)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String newAudioPath, String artworkId, String artworkTitle, String oldAudioUrl)? $default, {
    TResult Function(String newAudioPath)? successful,
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
    TResult Function(UpdateArtworkAudioStart value) $default, {
    required TResult Function(UpdateArtworkAudioSuccessful value) successful,
    required TResult Function(UpdateArtworkAudioError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateArtworkAudioStart value)? $default, {
    TResult? Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult? Function(UpdateArtworkAudioError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateArtworkAudioStart value)? $default, {
    TResult Function(UpdateArtworkAudioSuccessful value)? successful,
    TResult Function(UpdateArtworkAudioError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateArtworkAudioError implements UpdateArtworkAudio, ErrorAction {
  const factory UpdateArtworkAudioError(final Object error, final StackTrace stackTrace) =
      _$UpdateArtworkAudioErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateArtworkAudioErrorImplCopyWith<_$UpdateArtworkAudioErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
