import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state/app_state.dart';
import '../../models/favourite/favourite.dart';


class FavouritesContainer extends StatelessWidget {
  const FavouritesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Favourite>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Favourite>?>(
        converter: (Store<AppState> store) {
          return store.state.favourites;
        },
        builder: builder);
  }
}
