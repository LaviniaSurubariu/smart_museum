import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork_for_art_movements/artwork_for_art_movements.dart';

class ArtworksWithAllStylesContainer extends StatelessWidget {
  const ArtworksWithAllStylesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<ArtworkForArtMovements>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ArtworkForArtMovements>?>(
        converter: (Store<AppState> store) {
          return store.state.artworksWithAllStyles;
        },
        builder: builder);
  }
}
