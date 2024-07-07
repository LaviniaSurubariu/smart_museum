// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork_by_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtworkByStyle _$ArtworkByStyleFromJson(Map<String, dynamic> json) {
  return ArtworkByStyle$.fromJson(json);
}

/// @nodoc
mixin _$ArtworkByStyle {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  String get artistFirstName => throw _privateConstructorUsedError;
  String get artistLastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkByStyleCopyWith<ArtworkByStyle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkByStyleCopyWith<$Res> {
  factory $ArtworkByStyleCopyWith(ArtworkByStyle value, $Res Function(ArtworkByStyle) then) =
      _$ArtworkByStyleCopyWithImpl<$Res, ArtworkByStyle>;
  @useResult
  $Res call({String uid, String title, String pictureUrl, String artistFirstName, String artistLastName});
}

/// @nodoc
class _$ArtworkByStyleCopyWithImpl<$Res, $Val extends ArtworkByStyle> implements $ArtworkByStyleCopyWith<$Res> {
  _$ArtworkByStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? pictureUrl = null,
    Object? artistFirstName = null,
    Object? artistLastName = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artistFirstName: null == artistFirstName
          ? _value.artistFirstName
          : artistFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      artistLastName: null == artistLastName
          ? _value.artistLastName
          : artistLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtworkByStyle$ImplCopyWith<$Res> implements $ArtworkByStyleCopyWith<$Res> {
  factory _$$ArtworkByStyle$ImplCopyWith(_$ArtworkByStyle$Impl value, $Res Function(_$ArtworkByStyle$Impl) then) =
      __$$ArtworkByStyle$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String title, String pictureUrl, String artistFirstName, String artistLastName});
}

/// @nodoc
class __$$ArtworkByStyle$ImplCopyWithImpl<$Res> extends _$ArtworkByStyleCopyWithImpl<$Res, _$ArtworkByStyle$Impl>
    implements _$$ArtworkByStyle$ImplCopyWith<$Res> {
  __$$ArtworkByStyle$ImplCopyWithImpl(_$ArtworkByStyle$Impl _value, $Res Function(_$ArtworkByStyle$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? pictureUrl = null,
    Object? artistFirstName = null,
    Object? artistLastName = null,
  }) {
    return _then(_$ArtworkByStyle$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artistFirstName: null == artistFirstName
          ? _value.artistFirstName
          : artistFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      artistLastName: null == artistLastName
          ? _value.artistLastName
          : artistLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtworkByStyle$Impl implements ArtworkByStyle$ {
  const _$ArtworkByStyle$Impl(
      {required this.uid,
      required this.title,
      required this.pictureUrl,
      required this.artistFirstName,
      required this.artistLastName});

  factory _$ArtworkByStyle$Impl.fromJson(Map<String, dynamic> json) => _$$ArtworkByStyle$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  @override
  final String pictureUrl;
  @override
  final String artistFirstName;
  @override
  final String artistLastName;

  @override
  String toString() {
    return 'ArtworkByStyle(uid: $uid, title: $title, pictureUrl: $pictureUrl, artistFirstName: $artistFirstName, artistLastName: $artistLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkByStyle$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl) &&
            (identical(other.artistFirstName, artistFirstName) || other.artistFirstName == artistFirstName) &&
            (identical(other.artistLastName, artistLastName) || other.artistLastName == artistLastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, title, pictureUrl, artistFirstName, artistLastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkByStyle$ImplCopyWith<_$ArtworkByStyle$Impl> get copyWith =>
      __$$ArtworkByStyle$ImplCopyWithImpl<_$ArtworkByStyle$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkByStyle$ImplToJson(
      this,
    );
  }
}

abstract class ArtworkByStyle$ implements ArtworkByStyle {
  const factory ArtworkByStyle$(
      {required final String uid,
      required final String title,
      required final String pictureUrl,
      required final String artistFirstName,
      required final String artistLastName}) = _$ArtworkByStyle$Impl;

  factory ArtworkByStyle$.fromJson(Map<String, dynamic> json) = _$ArtworkByStyle$Impl.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  String get pictureUrl;
  @override
  String get artistFirstName;
  @override
  String get artistLastName;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkByStyle$ImplCopyWith<_$ArtworkByStyle$Impl> get copyWith => throw _privateConstructorUsedError;
}
