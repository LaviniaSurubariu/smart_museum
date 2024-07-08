// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddArtwork {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddArtworkStart value) $default, {
    required TResult Function(AddArtworkSuccessful value) successful,
    required TResult Function(AddArtworkError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtworkStart value)? $default, {
    TResult? Function(AddArtworkSuccessful value)? successful,
    TResult? Function(AddArtworkError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtworkStart value)? $default, {
    TResult Function(AddArtworkSuccessful value)? successful,
    TResult Function(AddArtworkError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArtworkCopyWith<$Res> {
  factory $AddArtworkCopyWith(
          AddArtwork value, $Res Function(AddArtwork) then) =
      _$AddArtworkCopyWithImpl<$Res, AddArtwork>;
}

/// @nodoc
class _$AddArtworkCopyWithImpl<$Res, $Val extends AddArtwork>
    implements $AddArtworkCopyWith<$Res> {
  _$AddArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddArtworkStartImplCopyWith<$Res> {
  factory _$$AddArtworkStartImplCopyWith(_$AddArtworkStartImpl value,
          $Res Function(_$AddArtworkStartImpl) then) =
      __$$AddArtworkStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String artistFirstName,
      String? artistLastName,
      String artistUid,
      int startCreationYear,
      int endCreationYear,
      String picturePath,
      String audioPath,
      String type,
      String style,
      String provenance,
      String originalTitle,
      String description,
      ActionResult result});
}

/// @nodoc
class __$$AddArtworkStartImplCopyWithImpl<$Res>
    extends _$AddArtworkCopyWithImpl<$Res, _$AddArtworkStartImpl>
    implements _$$AddArtworkStartImplCopyWith<$Res> {
  __$$AddArtworkStartImplCopyWithImpl(
      _$AddArtworkStartImpl _value, $Res Function(_$AddArtworkStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? artistFirstName = null,
    Object? artistLastName = freezed,
    Object? artistUid = null,
    Object? startCreationYear = null,
    Object? endCreationYear = null,
    Object? picturePath = null,
    Object? audioPath = null,
    Object? type = null,
    Object? style = null,
    Object? provenance = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? result = null,
  }) {
    return _then(_$AddArtworkStartImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artistFirstName: null == artistFirstName
          ? _value.artistFirstName
          : artistFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      artistLastName: freezed == artistLastName
          ? _value.artistLastName
          : artistLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistUid: null == artistUid
          ? _value.artistUid
          : artistUid // ignore: cast_nullable_to_non_nullable
              as String,
      startCreationYear: null == startCreationYear
          ? _value.startCreationYear
          : startCreationYear // ignore: cast_nullable_to_non_nullable
              as int,
      endCreationYear: null == endCreationYear
          ? _value.endCreationYear
          : endCreationYear // ignore: cast_nullable_to_non_nullable
              as int,
      picturePath: null == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      provenance: null == provenance
          ? _value.provenance
          : provenance // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$AddArtworkStartImpl implements AddArtworkStart {
  const _$AddArtworkStartImpl(
      {required this.title,
      required this.artistFirstName,
      required this.artistLastName,
      required this.artistUid,
      required this.startCreationYear,
      required this.endCreationYear,
      required this.picturePath,
      required this.audioPath,
      required this.type,
      required this.style,
      required this.provenance,
      required this.originalTitle,
      required this.description,
      required this.result});

  @override
  final String title;
  @override
  final String artistFirstName;
  @override
  final String? artistLastName;
  @override
  final String artistUid;
  @override
  final int startCreationYear;
  @override
  final int endCreationYear;
  @override
  final String picturePath;
  @override
  final String audioPath;
  @override
  final String type;
  @override
  final String style;
  @override
  final String provenance;
  @override
  final String originalTitle;
  @override
  final String description;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'AddArtwork(title: $title, artistFirstName: $artistFirstName, artistLastName: $artistLastName, artistUid: $artistUid, startCreationYear: $startCreationYear, endCreationYear: $endCreationYear, picturePath: $picturePath, audioPath: $audioPath, type: $type, style: $style, provenance: $provenance, originalTitle: $originalTitle, description: $description, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtworkStartImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artistFirstName, artistFirstName) ||
                other.artistFirstName == artistFirstName) &&
            (identical(other.artistLastName, artistLastName) ||
                other.artistLastName == artistLastName) &&
            (identical(other.artistUid, artistUid) ||
                other.artistUid == artistUid) &&
            (identical(other.startCreationYear, startCreationYear) ||
                other.startCreationYear == startCreationYear) &&
            (identical(other.endCreationYear, endCreationYear) ||
                other.endCreationYear == endCreationYear) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.provenance, provenance) ||
                other.provenance == provenance) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      artistFirstName,
      artistLastName,
      artistUid,
      startCreationYear,
      endCreationYear,
      picturePath,
      audioPath,
      type,
      style,
      provenance,
      originalTitle,
      description,
      result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArtworkStartImplCopyWith<_$AddArtworkStartImpl> get copyWith =>
      __$$AddArtworkStartImplCopyWithImpl<_$AddArtworkStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(
        title,
        artistFirstName,
        artistLastName,
        artistUid,
        startCreationYear,
        endCreationYear,
        picturePath,
        audioPath,
        type,
        style,
        provenance,
        originalTitle,
        description,
        result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(
        title,
        artistFirstName,
        artistLastName,
        artistUid,
        startCreationYear,
        endCreationYear,
        picturePath,
        audioPath,
        type,
        style,
        provenance,
        originalTitle,
        description,
        result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          title,
          artistFirstName,
          artistLastName,
          artistUid,
          startCreationYear,
          endCreationYear,
          picturePath,
          audioPath,
          type,
          style,
          provenance,
          originalTitle,
          description,
          result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddArtworkStart value) $default, {
    required TResult Function(AddArtworkSuccessful value) successful,
    required TResult Function(AddArtworkError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtworkStart value)? $default, {
    TResult? Function(AddArtworkSuccessful value)? successful,
    TResult? Function(AddArtworkError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtworkStart value)? $default, {
    TResult Function(AddArtworkSuccessful value)? successful,
    TResult Function(AddArtworkError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddArtworkStart implements AddArtwork {
  const factory AddArtworkStart(
      {required final String title,
      required final String artistFirstName,
      required final String? artistLastName,
      required final String artistUid,
      required final int startCreationYear,
      required final int endCreationYear,
      required final String picturePath,
      required final String audioPath,
      required final String type,
      required final String style,
      required final String provenance,
      required final String originalTitle,
      required final String description,
      required final ActionResult result}) = _$AddArtworkStartImpl;

  String get title;
  String get artistFirstName;
  String? get artistLastName;
  String get artistUid;
  int get startCreationYear;
  int get endCreationYear;
  String get picturePath;
  String get audioPath;
  String get type;
  String get style;
  String get provenance;
  String get originalTitle;
  String get description;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$AddArtworkStartImplCopyWith<_$AddArtworkStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddArtworkSuccessfulImplCopyWith<$Res> {
  factory _$$AddArtworkSuccessfulImplCopyWith(_$AddArtworkSuccessfulImpl value,
          $Res Function(_$AddArtworkSuccessfulImpl) then) =
      __$$AddArtworkSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddArtworkSuccessfulImplCopyWithImpl<$Res>
    extends _$AddArtworkCopyWithImpl<$Res, _$AddArtworkSuccessfulImpl>
    implements _$$AddArtworkSuccessfulImplCopyWith<$Res> {
  __$$AddArtworkSuccessfulImplCopyWithImpl(_$AddArtworkSuccessfulImpl _value,
      $Res Function(_$AddArtworkSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddArtworkSuccessfulImpl implements AddArtworkSuccessful {
  const _$AddArtworkSuccessfulImpl();

  @override
  String toString() {
    return 'AddArtwork.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtworkSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)
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
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
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
    TResult Function(AddArtworkStart value) $default, {
    required TResult Function(AddArtworkSuccessful value) successful,
    required TResult Function(AddArtworkError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtworkStart value)? $default, {
    TResult? Function(AddArtworkSuccessful value)? successful,
    TResult? Function(AddArtworkError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtworkStart value)? $default, {
    TResult Function(AddArtworkSuccessful value)? successful,
    TResult Function(AddArtworkError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddArtworkSuccessful implements AddArtwork {
  const factory AddArtworkSuccessful() = _$AddArtworkSuccessfulImpl;
}

/// @nodoc
abstract class _$$AddArtworkErrorImplCopyWith<$Res> {
  factory _$$AddArtworkErrorImplCopyWith(_$AddArtworkErrorImpl value,
          $Res Function(_$AddArtworkErrorImpl) then) =
      __$$AddArtworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddArtworkErrorImplCopyWithImpl<$Res>
    extends _$AddArtworkCopyWithImpl<$Res, _$AddArtworkErrorImpl>
    implements _$$AddArtworkErrorImplCopyWith<$Res> {
  __$$AddArtworkErrorImplCopyWithImpl(
      _$AddArtworkErrorImpl _value, $Res Function(_$AddArtworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddArtworkErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddArtworkErrorImpl implements AddArtworkError {
  const _$AddArtworkErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddArtwork.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtworkErrorImpl &&
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
  _$$AddArtworkErrorImplCopyWith<_$AddArtworkErrorImpl> get copyWith =>
      __$$AddArtworkErrorImplCopyWithImpl<_$AddArtworkErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)
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
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String artistFirstName,
            String? artistLastName,
            String artistUid,
            int startCreationYear,
            int endCreationYear,
            String picturePath,
            String audioPath,
            String type,
            String style,
            String provenance,
            String originalTitle,
            String description,
            ActionResult result)?
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
    TResult Function(AddArtworkStart value) $default, {
    required TResult Function(AddArtworkSuccessful value) successful,
    required TResult Function(AddArtworkError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddArtworkStart value)? $default, {
    TResult? Function(AddArtworkSuccessful value)? successful,
    TResult? Function(AddArtworkError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddArtworkStart value)? $default, {
    TResult Function(AddArtworkSuccessful value)? successful,
    TResult Function(AddArtworkError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddArtworkError implements AddArtwork, ErrorAction {
  const factory AddArtworkError(
      final Object error, final StackTrace stackTrace) = _$AddArtworkErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddArtworkErrorImplCopyWith<_$AddArtworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
