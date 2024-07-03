import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites.freezed.dart';

part 'favourites.g.dart';

@freezed
class Favourites with _$Favourites {
  const factory Favourites({
    required String uid,
    required String userId,
    required String artworkId,
    required String artworkTitle,
    required String artworkPictureUrl,
    required String artistName,
  }) = Favourites$;

  factory Favourites.fromJson(Map<dynamic, dynamic> json) => _$FavouritesFromJson(Map<String, dynamic>.from(json));
}
