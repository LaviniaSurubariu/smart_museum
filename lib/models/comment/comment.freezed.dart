// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment$.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get uid => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get idUser => throw _privateConstructorUsedError;
  String get firstNameUser => throw _privateConstructorUsedError;
  String get lastNameUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) = _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({String uid, String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? text = null,
    Object? createdAt = null,
    Object? idUser = null,
    Object? firstNameUser = null,
    Object? lastNameUser = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameUser: null == firstNameUser
          ? _value.firstNameUser
          : firstNameUser // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameUser: null == lastNameUser
          ? _value.lastNameUser
          : lastNameUser // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Comment$ImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$Comment$ImplCopyWith(_$Comment$Impl value, $Res Function(_$Comment$Impl) then) =
      __$$Comment$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String text, DateTime createdAt, String idUser, String firstNameUser, String lastNameUser});
}

/// @nodoc
class __$$Comment$ImplCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res, _$Comment$Impl>
    implements _$$Comment$ImplCopyWith<$Res> {
  __$$Comment$ImplCopyWithImpl(_$Comment$Impl _value, $Res Function(_$Comment$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? text = null,
    Object? createdAt = null,
    Object? idUser = null,
    Object? firstNameUser = null,
    Object? lastNameUser = null,
  }) {
    return _then(_$Comment$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameUser: null == firstNameUser
          ? _value.firstNameUser
          : firstNameUser // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameUser: null == lastNameUser
          ? _value.lastNameUser
          : lastNameUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Comment$Impl implements Comment$ {
  const _$Comment$Impl(
      {required this.uid,
      required this.text,
      required this.createdAt,
      required this.idUser,
      required this.firstNameUser,
      required this.lastNameUser});

  factory _$Comment$Impl.fromJson(Map<String, dynamic> json) => _$$Comment$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final String idUser;
  @override
  final String firstNameUser;
  @override
  final String lastNameUser;

  @override
  String toString() {
    return 'Comment(uid: $uid, text: $text, createdAt: $createdAt, idUser: $idUser, firstNameUser: $firstNameUser, lastNameUser: $lastNameUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Comment$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.firstNameUser, firstNameUser) || other.firstNameUser == firstNameUser) &&
            (identical(other.lastNameUser, lastNameUser) || other.lastNameUser == lastNameUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, text, createdAt, idUser, firstNameUser, lastNameUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Comment$ImplCopyWith<_$Comment$Impl> get copyWith =>
      __$$Comment$ImplCopyWithImpl<_$Comment$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Comment$ImplToJson(
      this,
    );
  }
}

abstract class Comment$ implements Comment {
  const factory Comment$(
      {required final String uid,
      required final String text,
      required final DateTime createdAt,
      required final String idUser,
      required final String firstNameUser,
      required final String lastNameUser}) = _$Comment$Impl;

  factory Comment$.fromJson(Map<String, dynamic> json) = _$Comment$Impl.fromJson;

  @override
  String get uid;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  String get idUser;
  @override
  String get firstNameUser;
  @override
  String get lastNameUser;
  @override
  @JsonKey(ignore: true)
  _$$Comment$ImplCopyWith<_$Comment$Impl> get copyWith => throw _privateConstructorUsedError;
}
