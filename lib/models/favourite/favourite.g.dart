// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Favourite$Impl _$$Favourite$ImplFromJson(Map<String, dynamic> json) =>
    _$Favourite$Impl(
      uid: json['uid'] as String,
      userId: json['userId'] as String,
      artworkId: json['artworkId'] as String,
      artworkTitle: json['artworkTitle'] as String,
      artworkPictureUrl: json['artworkPictureUrl'] as String,
      artistName: json['artistName'] as String,
    );

Map<String, dynamic> _$$Favourite$ImplToJson(_$Favourite$Impl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userId': instance.userId,
      'artworkId': instance.artworkId,
      'artworkTitle': instance.artworkTitle,
      'artworkPictureUrl': instance.artworkPictureUrl,
      'artistName': instance.artistName,
    };
