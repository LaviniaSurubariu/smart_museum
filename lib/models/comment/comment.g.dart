// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Comment$Impl _$$Comment$ImplFromJson(Map<String, dynamic> json) => _$Comment$Impl(
      uid: json['uid'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      idUser: json['idUser'] as String,
      firstNameUser: json['firstNameUser'] as String,
      lastNameUser: json['lastNameUser'] as String,
    );

Map<String, dynamic> _$$Comment$ImplToJson(_$Comment$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'idUser': instance.idUser,
      'firstNameUser': instance.firstNameUser,
      'lastNameUser': instance.lastNameUser,
    };
