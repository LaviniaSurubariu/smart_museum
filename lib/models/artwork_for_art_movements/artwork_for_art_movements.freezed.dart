// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork_for_art_movements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtworkForArtMovements _$ArtworkForArtMovementsFromJson(
    Map<String, dynamic> json) {
  return ArtworkForArtMovements$.fromJson(json);
}

/// @nodoc
mixin _$ArtworkForArtMovements {
  String get uid => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkForArtMovementsCopyWith<ArtworkForArtMovements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkForArtMovementsCopyWith<$Res> {
  factory $ArtworkForArtMovementsCopyWith(ArtworkForArtMovements value,
          $Res Function(ArtworkForArtMovements) then) =
      _$ArtworkForArtMovementsCopyWithImpl<$Res, ArtworkForArtMovements>;
  @useResult
  $Res call({String uid, String pictureUrl, String style});
}

/// @nodoc
class _$ArtworkForArtMovementsCopyWithImpl<$Res,
        $Val extends ArtworkForArtMovements>
    implements $ArtworkForArtMovementsCopyWith<$Res> {
  _$ArtworkForArtMovementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? pictureUrl = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtworkForArtMovements$ImplCopyWith<$Res>
    implements $ArtworkForArtMovementsCopyWith<$Res> {
  factory _$$ArtworkForArtMovements$ImplCopyWith(
          _$ArtworkForArtMovements$Impl value,
          $Res Function(_$ArtworkForArtMovements$Impl) then) =
      __$$ArtworkForArtMovements$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String pictureUrl, String style});
}

/// @nodoc
class __$$ArtworkForArtMovements$ImplCopyWithImpl<$Res>
    extends _$ArtworkForArtMovementsCopyWithImpl<$Res,
        _$ArtworkForArtMovements$Impl>
    implements _$$ArtworkForArtMovements$ImplCopyWith<$Res> {
  __$$ArtworkForArtMovements$ImplCopyWithImpl(
      _$ArtworkForArtMovements$Impl _value,
      $Res Function(_$ArtworkForArtMovements$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? pictureUrl = null,
    Object? style = null,
  }) {
    return _then(_$ArtworkForArtMovements$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtworkForArtMovements$Impl implements ArtworkForArtMovements$ {
  const _$ArtworkForArtMovements$Impl(
      {required this.uid, required this.pictureUrl, required this.style});

  factory _$ArtworkForArtMovements$Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkForArtMovements$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String pictureUrl;
  @override
  final String style;

  @override
  String toString() {
    return 'ArtworkForArtMovements(uid: $uid, pictureUrl: $pictureUrl, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkForArtMovements$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, pictureUrl, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkForArtMovements$ImplCopyWith<_$ArtworkForArtMovements$Impl>
      get copyWith => __$$ArtworkForArtMovements$ImplCopyWithImpl<
          _$ArtworkForArtMovements$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkForArtMovements$ImplToJson(
      this,
    );
  }
}

abstract class ArtworkForArtMovements$ implements ArtworkForArtMovements {
  const factory ArtworkForArtMovements$(
      {required final String uid,
      required final String pictureUrl,
      required final String style}) = _$ArtworkForArtMovements$Impl;

  factory ArtworkForArtMovements$.fromJson(Map<String, dynamic> json) =
      _$ArtworkForArtMovements$Impl.fromJson;

  @override
  String get uid;
  @override
  String get pictureUrl;
  @override
  String get style;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkForArtMovements$ImplCopyWith<_$ArtworkForArtMovements$Impl>
      get copyWith => throw _privateConstructorUsedError;
}
