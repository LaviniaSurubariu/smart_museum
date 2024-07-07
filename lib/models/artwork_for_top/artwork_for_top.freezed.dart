// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork_for_top.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtworkForTop _$ArtworkForTopFromJson(Map<String, dynamic> json) {
  return ArtworkForTop$.fromJson(json);
}

/// @nodoc
mixin _$ArtworkForTop {
  String get uid => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkForTopCopyWith<ArtworkForTop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkForTopCopyWith<$Res> {
  factory $ArtworkForTopCopyWith(
          ArtworkForTop value, $Res Function(ArtworkForTop) then) =
      _$ArtworkForTopCopyWithImpl<$Res, ArtworkForTop>;
  @useResult
  $Res call({String uid, String pictureUrl, String title});
}

/// @nodoc
class _$ArtworkForTopCopyWithImpl<$Res, $Val extends ArtworkForTop>
    implements $ArtworkForTopCopyWith<$Res> {
  _$ArtworkForTopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? pictureUrl = null,
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtworkForTop$ImplCopyWith<$Res>
    implements $ArtworkForTopCopyWith<$Res> {
  factory _$$ArtworkForTop$ImplCopyWith(_$ArtworkForTop$Impl value,
          $Res Function(_$ArtworkForTop$Impl) then) =
      __$$ArtworkForTop$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String pictureUrl, String title});
}

/// @nodoc
class __$$ArtworkForTop$ImplCopyWithImpl<$Res>
    extends _$ArtworkForTopCopyWithImpl<$Res, _$ArtworkForTop$Impl>
    implements _$$ArtworkForTop$ImplCopyWith<$Res> {
  __$$ArtworkForTop$ImplCopyWithImpl(
      _$ArtworkForTop$Impl _value, $Res Function(_$ArtworkForTop$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? pictureUrl = null,
    Object? title = null,
  }) {
    return _then(_$ArtworkForTop$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtworkForTop$Impl implements ArtworkForTop$ {
  const _$ArtworkForTop$Impl(
      {required this.uid, required this.pictureUrl, required this.title});

  factory _$ArtworkForTop$Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkForTop$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String pictureUrl;
  @override
  final String title;

  @override
  String toString() {
    return 'ArtworkForTop(uid: $uid, pictureUrl: $pictureUrl, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkForTop$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, pictureUrl, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkForTop$ImplCopyWith<_$ArtworkForTop$Impl> get copyWith =>
      __$$ArtworkForTop$ImplCopyWithImpl<_$ArtworkForTop$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkForTop$ImplToJson(
      this,
    );
  }
}

abstract class ArtworkForTop$ implements ArtworkForTop {
  const factory ArtworkForTop$(
      {required final String uid,
      required final String pictureUrl,
      required final String title}) = _$ArtworkForTop$Impl;

  factory ArtworkForTop$.fromJson(Map<String, dynamic> json) =
      _$ArtworkForTop$Impl.fromJson;

  @override
  String get uid;
  @override
  String get pictureUrl;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkForTop$ImplCopyWith<_$ArtworkForTop$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
