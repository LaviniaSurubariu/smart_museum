import 'package:freezed_annotation/freezed_annotation.dart';
import '../artwork_without_qrCode/artwork_without_qr_code.dart';
import '../user/app_user/app_user.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
    ArtworkWithoutQrCode? selectedArtworkWithoutQrCode,
}) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
