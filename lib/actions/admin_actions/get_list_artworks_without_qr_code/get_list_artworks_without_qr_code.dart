import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../../app_action.dart';

part 'get_list_artworks_without_qr_code.freezed.dart';

@freezed
class GetListArtworksWithoutQrCode with _$GetListArtworksWithoutQrCode implements AppAction {
  const factory GetListArtworksWithoutQrCode({
    required ActionResult result,
  }) = GetListArtworksWithoutQrCodeStart;

  const factory GetListArtworksWithoutQrCode.successful(List<ArtworkWithoutQrCode> artworksWithoutQrCode) =
      GetListArtworksWithoutQrCodeSuccessful;

  @Implements<ErrorAction>()
  const factory GetListArtworksWithoutQrCode.error(Object error, StackTrace stackTrace) =
      GetListArtworksWithoutQrCodeError;
}
