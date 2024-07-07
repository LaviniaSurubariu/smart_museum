import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork_for_top.freezed.dart';

part 'artwork_for_top.g.dart';

@freezed
class ArtworkForTop with _$ArtworkForTop {
  const factory ArtworkForTop({
    required String uid,
    required String pictureUrl,
    required String title,
  }) = ArtworkForTop$;

  factory ArtworkForTop.fromJson(Map<dynamic, dynamic> json) =>
      _$ArtworkForTopFromJson(Map<String, dynamic>.from(json));
}
