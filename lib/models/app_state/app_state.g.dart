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
      scannedArtwork: json['scannedArtwork'] == null
          ? null
          : Artwork.fromJson(json['scannedArtwork'] as Map<String, dynamic>),
      selectedArtwork: json['selectedArtwork'] == null
          ? null
          : Artwork.fromJson(json['selectedArtwork'] as Map<String, dynamic>),
      selectedArtist: json['selectedArtist'] == null
          ? null
          : Artist.fromJson(json['selectedArtist'] as Map<String, dynamic>),
      isFavourite: json['isFavourite'] as bool?,
      favourites: (json['favourites'] as List<dynamic>?)
          ?.map((e) => Favourite.fromJson(e as Map<String, dynamic>))
          .toList(),
      routeArtworkIndex: (json['routeArtworkIndex'] as num?)?.toInt(),
      routeArtistIndex: (json['routeArtistIndex'] as num?)?.toInt(),
      artworks: (json['artworks'] as List<dynamic>?)
          ?.map((e) => Artwork.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      artworksForArtMovements: (json['artworksForArtMovements']
              as List<dynamic>?)
          ?.map(
              (e) => ArtworkForArtMovements.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'artworksWithoutQrCode': instance.artworksWithoutQrCode,
      'selectedArtworkWithoutQrCode': instance.selectedArtworkWithoutQrCode,
      'scannedArtwork': instance.scannedArtwork,
      'selectedArtwork': instance.selectedArtwork,
      'selectedArtist': instance.selectedArtist,
      'isFavourite': instance.isFavourite,
      'favourites': instance.favourites,
      'routeArtworkIndex': instance.routeArtworkIndex,
      'routeArtistIndex': instance.routeArtistIndex,
      'artworks': instance.artworks,
      'artists': instance.artists,
      'comments': instance.comments,
      'artworksForArtMovements': instance.artworksForArtMovements,
    };
