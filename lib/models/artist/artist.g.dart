// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Artist$Impl _$$Artist$ImplFromJson(Map<String, dynamic> json) => _$Artist$Impl(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      pictureUrl: json['pictureUrl'] as String,
      birthdate: json['birthdate'] == null ? null : DateTime.parse(json['birthdate'] as String),
      deathDate: json['deathDate'] == null ? null : DateTime.parse(json['deathDate'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$Artist$ImplToJson(_$Artist$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'pictureUrl': instance.pictureUrl,
      'birthdate': instance.birthdate?.toIso8601String(),
      'deathDate': instance.deathDate?.toIso8601String(),
      'description': instance.description,
    };
