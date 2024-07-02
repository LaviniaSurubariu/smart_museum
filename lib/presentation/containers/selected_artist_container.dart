

import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';

class SelectedArtistContainer extends StatelessWidget {
  const SelectedArtistContainer({super.key, required this.builder});

  final ViewModelBuilder<Artist> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Artist>(
        converter: (Store<AppState> store) {
          return store.state.selectedArtist!;
        },
        builder: builder);
  }
}
