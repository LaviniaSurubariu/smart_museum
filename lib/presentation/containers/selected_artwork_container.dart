import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork/artwork.dart';

class SelectedArtworkContainer extends StatelessWidget {
  const SelectedArtworkContainer({super.key, required this.builder});

  final ViewModelBuilder<Artwork> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Artwork>(
        converter: (Store<AppState> store) {
          return store.state.selectedArtwork!;
        },
        builder: builder);
  }
}
