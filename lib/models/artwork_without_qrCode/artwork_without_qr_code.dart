import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork_without_qr_code.freezed.dart';

part 'artwork_without_qr_code.g.dart';

@freezed
  class ArtworkWithoutQrCode with _$ArtworkWithoutQrCode {
  const factory ArtworkWithoutQrCode({
    required String id,
    required String title,
  }) = ArtworkWithoutQrCode$;

  factory ArtworkWithoutQrCode.fromJson(Map<dynamic, dynamic> json) =>
      _$ArtworkWithoutQrCodeFromJson(Map<String, dynamic>.from(json));
}
