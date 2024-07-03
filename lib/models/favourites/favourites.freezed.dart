// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Favourites _$FavouritesFromJson(Map<String, dynamic> json) {
  return Favourites$.fromJson(json);
}

/// @nodoc
mixin _$Favourites {
  String get uid => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get artworkId => throw _privateConstructorUsedError;
  String get artworkTitle => throw _privateConstructorUsedError;
  String get artworkPictureUrl => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesCopyWith<Favourites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesCopyWith<$Res> {
  factory $FavouritesCopyWith(
          Favourites value, $Res Function(Favourites) then) =
      _$FavouritesCopyWithImpl<$Res, Favourites>;
  @useResult
  $Res call(
      {String uid,
      String userId,
      String artworkId,
      String artworkTitle,
      String artworkPictureUrl,
      String artistName});
}

/// @nodoc
class _$FavouritesCopyWithImpl<$Res, $Val extends Favourites>
    implements $FavouritesCopyWith<$Res> {
  _$FavouritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userId = null,
    Object? artworkId = null,
    Object? artworkTitle = null,
    Object? artworkPictureUrl = null,
    Object? artistName = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Favourites$ImplCopyWith<$Res>
    implements $FavouritesCopyWith<$Res> {
  factory _$$Favourites$ImplCopyWith(
          _$Favourites$Impl value, $Res Function(_$Favourites$Impl) then) =
      __$$Favourites$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String userId,
      String artworkId,
      String artworkTitle,
      String artworkPictureUrl,
      String artistName});
}

/// @nodoc
class __$$Favourites$ImplCopyWithImpl<$Res>
    extends _$FavouritesCopyWithImpl<$Res, _$Favourites$Impl>
    implements _$$Favourites$ImplCopyWith<$Res> {
  __$$Favourites$ImplCopyWithImpl(
      _$Favourites$Impl _value, $Res Function(_$Favourites$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userId = null,
    Object? artworkId = null,
    Object? artworkTitle = null,
    Object? artworkPictureUrl = null,
    Object? artistName = null,
  }) {
    return _then(_$Favourites$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$Favourites$Impl implements Favourites$ {
  const _$Favourites$Impl(
      {required this.uid,
      required this.userId,
      required this.artworkId,
      required this.artworkTitle,
      required this.artworkPictureUrl,
      required this.artistName});

  factory _$Favourites$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Favourites$ImplFromJson(json);

  @override
  final String uid;
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
    return 'Favourites(uid: $uid, userId: $userId, artworkId: $artworkId, artworkTitle: $artworkTitle, artworkPictureUrl: $artworkPictureUrl, artistName: $artistName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Favourites$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId) &&
            (identical(other.artworkTitle, artworkTitle) ||
                other.artworkTitle == artworkTitle) &&
            (identical(other.artworkPictureUrl, artworkPictureUrl) ||
                other.artworkPictureUrl == artworkPictureUrl) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, userId, artworkId,
      artworkTitle, artworkPictureUrl, artistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Favourites$ImplCopyWith<_$Favourites$Impl> get copyWith =>
      __$$Favourites$ImplCopyWithImpl<_$Favourites$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Favourites$ImplToJson(
      this,
    );
  }
}

abstract class Favourites$ implements Favourites {
  const factory Favourites$(
      {required final String uid,
      required final String userId,
      required final String artworkId,
      required final String artworkTitle,
      required final String artworkPictureUrl,
      required final String artistName}) = _$Favourites$Impl;

  factory Favourites$.fromJson(Map<String, dynamic> json) =
      _$Favourites$Impl.fromJson;

  @override
  String get uid;
  @override
  String get userId;
  @override
  String get artworkId;
  @override
  String get artworkTitle;
  @override
  String get artworkPictureUrl;
  @override
  String get artistName;
  @override
  @JsonKey(ignore: true)
  _$$Favourites$ImplCopyWith<_$Favourites$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
