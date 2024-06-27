import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';

part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String uid,
    required String firstName,
    required String lastName,
    required String pictureUrl,
    required DateTime birthdate,
    required DateTime? deathDate,
    required String description,
  }) = Artist$;

  factory Artist.fromJson(Map<dynamic, dynamic> json) => _$ArtistFromJson(Map<String, dynamic>.from(json));
}
