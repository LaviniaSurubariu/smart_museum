// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      artworksWithoutQrCode: (json['artworksWithoutQrCode'] as List<dynamic>?)
          ?.map((e) => ArtworkWithoutQrCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedArtworkWithoutQrCode: json['selectedArtworkWithoutQrCode'] == null
          ? null
          : ArtworkWithoutQrCode.fromJson(
              json['selectedArtworkWithoutQrCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'artworksWithoutQrCode': instance.artworksWithoutQrCode,
      'selectedArtworkWithoutQrCode': instance.selectedArtworkWithoutQrCode,
    };
