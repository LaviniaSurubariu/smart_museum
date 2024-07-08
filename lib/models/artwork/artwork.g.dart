// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Artwork$Impl _$$Artwork$ImplFromJson(Map<String, dynamic> json) => _$Artwork$Impl(
      uid: json['uid'] as String,
      title: json['title'] as String,
      artistFirstName: json['artistFirstName'] as String,
      artistLastName: json['artistLastName'] as String?,
      artistUid: json['artistUid'] as String,
      startCreationYear: (json['startCreationYear'] as num).toInt(),
      endCreationYear: (json['endCreationYear'] as num).toInt(),
      pictureUrl: json['pictureUrl'] as String,
      audioUrl: json['audioUrl'] as String,
      qrCodeUrl: json['qrCodeUrl'] as String?,
      type: json['type'] as String,
      style: json['style'] as String,
      provenance: json['provenance'] as String,
      originalTitle: json['originalTitle'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$Artwork$ImplToJson(_$Artwork$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'artistFirstName': instance.artistFirstName,
      'artistLastName': instance.artistLastName,
      'artistUid': instance.artistUid,
      'startCreationYear': instance.startCreationYear,
      'endCreationYear': instance.endCreationYear,
      'pictureUrl': instance.pictureUrl,
      'audioUrl': instance.audioUrl,
      'qrCodeUrl': instance.qrCodeUrl,
      'type': instance.type,
      'style': instance.style,
      'provenance': instance.provenance,
      'originalTitle': instance.originalTitle,
      'description': instance.description,
    };
