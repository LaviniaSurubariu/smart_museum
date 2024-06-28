import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork_without_qrCode/artwork_without_qr_code.dart';


class ArtworksWithoutQrCodeContainer extends StatelessWidget {
  const ArtworksWithoutQrCodeContainer({super.key, required this.builder});

  final ViewModelBuilder<List<ArtworkWithoutQrCode>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ArtworkWithoutQrCode>?>(
        converter: (Store<AppState> store) {
          return store.state.artworksWithoutQrCode;
        },
        builder: builder);
  }
}
