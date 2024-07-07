import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork_for_top/artwork_for_top.dart';


class TopArtworksContainer extends StatelessWidget {
  const TopArtworksContainer({super.key, required this.builder});

  final ViewModelBuilder<List<ArtworkForTop>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ArtworkForTop>?>(
        converter: (Store<AppState> store) {
          return store.state.topArtworks;
        },
        builder: builder);
  }
}
