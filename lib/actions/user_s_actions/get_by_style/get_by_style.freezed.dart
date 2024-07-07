// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_by_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetByStyle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String style) $default, {
    required TResult Function(List<ArtworkByStyle> artworksByStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String style)? $default, {
    TResult? Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String style)? $default, {
    TResult Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetByStyleStart value) $default, {
    required TResult Function(GetByStyleSuccessful value) successful,
    required TResult Function(GetByStyleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetByStyleStart value)? $default, {
    TResult? Function(GetByStyleSuccessful value)? successful,
    TResult? Function(GetByStyleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetByStyleStart value)? $default, {
    TResult Function(GetByStyleSuccessful value)? successful,
    TResult Function(GetByStyleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetByStyleCopyWith<$Res> {
  factory $GetByStyleCopyWith(
          GetByStyle value, $Res Function(GetByStyle) then) =
      _$GetByStyleCopyWithImpl<$Res, GetByStyle>;
}

/// @nodoc
class _$GetByStyleCopyWithImpl<$Res, $Val extends GetByStyle>
    implements $GetByStyleCopyWith<$Res> {
  _$GetByStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetByStyleStartImplCopyWith<$Res> {
  factory _$$GetByStyleStartImplCopyWith(_$GetByStyleStartImpl value,
          $Res Function(_$GetByStyleStartImpl) then) =
      __$$GetByStyleStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String style});
}

/// @nodoc
class __$$GetByStyleStartImplCopyWithImpl<$Res>
    extends _$GetByStyleCopyWithImpl<$Res, _$GetByStyleStartImpl>
    implements _$$GetByStyleStartImplCopyWith<$Res> {
  __$$GetByStyleStartImplCopyWithImpl(
      _$GetByStyleStartImpl _value, $Res Function(_$GetByStyleStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$GetByStyleStartImpl(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetByStyleStartImpl implements GetByStyleStart {
  const _$GetByStyleStartImpl({required this.style});

  @override
  final String style;

  @override
  String toString() {
    return 'GetByStyle(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByStyleStartImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByStyleStartImplCopyWith<_$GetByStyleStartImpl> get copyWith =>
      __$$GetByStyleStartImplCopyWithImpl<_$GetByStyleStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String style) $default, {
    required TResult Function(List<ArtworkByStyle> artworksByStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String style)? $default, {
    TResult? Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String style)? $default, {
    TResult Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetByStyleStart value) $default, {
    required TResult Function(GetByStyleSuccessful value) successful,
    required TResult Function(GetByStyleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetByStyleStart value)? $default, {
    TResult? Function(GetByStyleSuccessful value)? successful,
    TResult? Function(GetByStyleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetByStyleStart value)? $default, {
    TResult Function(GetByStyleSuccessful value)? successful,
    TResult Function(GetByStyleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetByStyleStart implements GetByStyle {
  const factory GetByStyleStart({required final String style}) =
      _$GetByStyleStartImpl;

  String get style;
  @JsonKey(ignore: true)
  _$$GetByStyleStartImplCopyWith<_$GetByStyleStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetByStyleSuccessfulImplCopyWith<$Res> {
  factory _$$GetByStyleSuccessfulImplCopyWith(_$GetByStyleSuccessfulImpl value,
          $Res Function(_$GetByStyleSuccessfulImpl) then) =
      __$$GetByStyleSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArtworkByStyle> artworksByStyle});
}

/// @nodoc
class __$$GetByStyleSuccessfulImplCopyWithImpl<$Res>
    extends _$GetByStyleCopyWithImpl<$Res, _$GetByStyleSuccessfulImpl>
    implements _$$GetByStyleSuccessfulImplCopyWith<$Res> {
  __$$GetByStyleSuccessfulImplCopyWithImpl(_$GetByStyleSuccessfulImpl _value,
      $Res Function(_$GetByStyleSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artworksByStyle = null,
  }) {
    return _then(_$GetByStyleSuccessfulImpl(
      null == artworksByStyle
          ? _value._artworksByStyle
          : artworksByStyle // ignore: cast_nullable_to_non_nullable
              as List<ArtworkByStyle>,
    ));
  }
}

/// @nodoc

class _$GetByStyleSuccessfulImpl implements GetByStyleSuccessful {
  const _$GetByStyleSuccessfulImpl(final List<ArtworkByStyle> artworksByStyle)
      : _artworksByStyle = artworksByStyle;

  final List<ArtworkByStyle> _artworksByStyle;
  @override
  List<ArtworkByStyle> get artworksByStyle {
    if (_artworksByStyle is EqualUnmodifiableListView) return _artworksByStyle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artworksByStyle);
  }

  @override
  String toString() {
    return 'GetByStyle.successful(artworksByStyle: $artworksByStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByStyleSuccessfulImpl &&
            const DeepCollectionEquality()
                .equals(other._artworksByStyle, _artworksByStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_artworksByStyle));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByStyleSuccessfulImplCopyWith<_$GetByStyleSuccessfulImpl>
      get copyWith =>
          __$$GetByStyleSuccessfulImplCopyWithImpl<_$GetByStyleSuccessfulImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String style) $default, {
    required TResult Function(List<ArtworkByStyle> artworksByStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(artworksByStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String style)? $default, {
    TResult? Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(artworksByStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String style)? $default, {
    TResult Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(artworksByStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetByStyleStart value) $default, {
    required TResult Function(GetByStyleSuccessful value) successful,
    required TResult Function(GetByStyleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetByStyleStart value)? $default, {
    TResult? Function(GetByStyleSuccessful value)? successful,
    TResult? Function(GetByStyleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetByStyleStart value)? $default, {
    TResult Function(GetByStyleSuccessful value)? successful,
    TResult Function(GetByStyleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetByStyleSuccessful implements GetByStyle {
  const factory GetByStyleSuccessful(
      final List<ArtworkByStyle> artworksByStyle) = _$GetByStyleSuccessfulImpl;

  List<ArtworkByStyle> get artworksByStyle;
  @JsonKey(ignore: true)
  _$$GetByStyleSuccessfulImplCopyWith<_$GetByStyleSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetByStyleErrorImplCopyWith<$Res> {
  factory _$$GetByStyleErrorImplCopyWith(_$GetByStyleErrorImpl value,
          $Res Function(_$GetByStyleErrorImpl) then) =
      __$$GetByStyleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetByStyleErrorImplCopyWithImpl<$Res>
    extends _$GetByStyleCopyWithImpl<$Res, _$GetByStyleErrorImpl>
    implements _$$GetByStyleErrorImplCopyWith<$Res> {
  __$$GetByStyleErrorImplCopyWithImpl(
      _$GetByStyleErrorImpl _value, $Res Function(_$GetByStyleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetByStyleErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetByStyleErrorImpl implements GetByStyleError {
  const _$GetByStyleErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetByStyle.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByStyleErrorImpl &&
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
  _$$GetByStyleErrorImplCopyWith<_$GetByStyleErrorImpl> get copyWith =>
      __$$GetByStyleErrorImplCopyWithImpl<_$GetByStyleErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String style) $default, {
    required TResult Function(List<ArtworkByStyle> artworksByStyle) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String style)? $default, {
    TResult? Function(List<ArtworkByStyle> artworksByStyle)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String style)? $default, {
    TResult Function(List<ArtworkByStyle> artworksByStyle)? successful,
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
    TResult Function(GetByStyleStart value) $default, {
    required TResult Function(GetByStyleSuccessful value) successful,
    required TResult Function(GetByStyleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetByStyleStart value)? $default, {
    TResult? Function(GetByStyleSuccessful value)? successful,
    TResult? Function(GetByStyleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetByStyleStart value)? $default, {
    TResult Function(GetByStyleSuccessful value)? successful,
    TResult Function(GetByStyleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetByStyleError implements GetByStyle, ErrorAction {
  const factory GetByStyleError(
      final Object error, final StackTrace stackTrace) = _$GetByStyleErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetByStyleErrorImplCopyWith<_$GetByStyleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
