import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork_without_qrCode/artwork_without_qr_code.dart';

class SelectedArtworkWithoutQrCodeContainer extends StatelessWidget {
  const SelectedArtworkWithoutQrCodeContainer({super.key, required this.builder});

  final ViewModelBuilder<ArtworkWithoutQrCode> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ArtworkWithoutQrCode>(
      converter: (Store<AppState> store) {
        return store.state.selectedArtworkWithoutQrCode!;
      },
      builder: builder,
    );
  }
}
