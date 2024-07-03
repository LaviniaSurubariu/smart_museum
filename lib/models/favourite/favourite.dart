import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite.freezed.dart';

part 'favourite.g.dart';

@freezed
class Favourite with _$Favourite {
  const factory Favourite({
    required String uid,
    required String userId,
    required String artworkId,
    required String artworkTitle,
    required String artworkPictureUrl,
    required String artistName,
  }) = Favourite$;

  factory Favourite.fromJson(Map<dynamic, dynamic> json) => _$FavouriteFromJson(Map<String, dynamic>.from(json));
}
