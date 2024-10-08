// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  DateTime get creationTime => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;
  bool get hasSubscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) = _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String firstName,
      String lastName,
      DateTime creationTime,
      String role,
      String? pictureUrl,
      bool hasSubscription});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? creationTime = null,
    Object? role = null,
    Object? pictureUrl = freezed,
    Object? hasSubscription = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubscription: null == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$ImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$ImplCopyWith(_$AppUser$Impl value, $Res Function(_$AppUser$Impl) then) =
      __$$AppUser$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String firstName,
      String lastName,
      DateTime creationTime,
      String role,
      String? pictureUrl,
      bool hasSubscription});
}

/// @nodoc
class __$$AppUser$ImplCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res, _$AppUser$Impl>
    implements _$$AppUser$ImplCopyWith<$Res> {
  __$$AppUser$ImplCopyWithImpl(_$AppUser$Impl _value, $Res Function(_$AppUser$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? creationTime = null,
    Object? role = null,
    Object? pictureUrl = freezed,
    Object? hasSubscription = null,
  }) {
    return _then(_$AppUser$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubscription: null == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$Impl implements AppUser$ {
  const _$AppUser$Impl(
      {required this.uid,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.creationTime,
      required this.role,
      this.pictureUrl,
      required this.hasSubscription});

  factory _$AppUser$Impl.fromJson(Map<String, dynamic> json) => _$$AppUser$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final DateTime creationTime;
  @override
  final String role;
  @override
  final String? pictureUrl;
  @override
  final bool hasSubscription;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, firstName: $firstName, lastName: $lastName, creationTime: $creationTime, role: $role, pictureUrl: $pictureUrl, hasSubscription: $hasSubscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.creationTime, creationTime) || other.creationTime == creationTime) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl) &&
            (identical(other.hasSubscription, hasSubscription) || other.hasSubscription == hasSubscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, firstName, lastName, creationTime, role, pictureUrl, hasSubscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$ImplCopyWith<_$AppUser$Impl> get copyWith =>
      __$$AppUser$ImplCopyWithImpl<_$AppUser$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ImplToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final DateTime creationTime,
      required final String role,
      final String? pictureUrl,
      required final bool hasSubscription}) = _$AppUser$Impl;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$Impl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  DateTime get creationTime;
  @override
  String get role;
  @override
  String? get pictureUrl;
  @override
  bool get hasSubscription;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$ImplCopyWith<_$AppUser$Impl> get copyWith => throw _privateConstructorUsedError;
}
