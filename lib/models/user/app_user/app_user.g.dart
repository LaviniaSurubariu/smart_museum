// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$Impl _$$AppUser$ImplFromJson(Map<String, dynamic> json) => _$AppUser$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      creationTime: DateTime.parse(json['creationTime'] as String),
      role: json['role'] as String,
      pictureUrl: json['pictureUrl'] as String?,
      hasSubscription: json['hasSubscription'] as bool,
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'creationTime': instance.creationTime.toIso8601String(),
      'role': instance.role,
      'pictureUrl': instance.pictureUrl,
      'hasSubscription': instance.hasSubscription,
    };
