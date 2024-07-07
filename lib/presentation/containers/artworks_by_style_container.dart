import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/artwork_by_style/artwork_by_style.dart';

class ArtworksByStyleContainer extends StatelessWidget {
  const ArtworksByStyleContainer({super.key, required this.builder});

  final ViewModelBuilder<List<ArtworkByStyle>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ArtworkByStyle>?>(
        converter: (Store<AppState> store) {
          return store.state.artworksByStyle;
        },
        builder: builder);
  }
}
