import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';

class ArtistsContainer extends StatelessWidget {
  const ArtistsContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Artist>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Artist>?>(
        converter: (Store<AppState> store) {
          return store.state.artists;
        },
        builder: builder);
  }
}
