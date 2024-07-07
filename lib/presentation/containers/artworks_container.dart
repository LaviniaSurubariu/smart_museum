import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork/artwork.dart';

class ArtworksContainer extends StatelessWidget {
  const ArtworksContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Artwork>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Artwork>?>(
        converter: (Store<AppState> store) {
          return store.state.artworks;
        },
        builder: builder);
  }
}
