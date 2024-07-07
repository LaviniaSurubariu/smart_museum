import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../../models/app_state/app_state.dart';
import '../../models/favourite/favourite.dart';
import '../containers/favourites_container.dart';
import '../utils/list_artwork_widget.dart';
import '../utils/extensions.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return FavouritesContainer(
      builder: (BuildContext context, List<Favourite>? favourites) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                context.dispatch(const GetTopArtworks());
                context.dispatch(const GetTopArtists());
                context.dispatch(const GetArtworksWithStyle());
                Navigator.pushReplacementNamed(context, '/homeScreenPage');
              },
            ),
            title: const Text(
              'YOUR FAVOURITES',
              style: TextStyle(fontSize: 16),
            ),
          ),
          body: favourites == null || favourites.isEmpty
              ? const Center(child: Text('No favourites found.'))
              : ListView.builder(
                  itemCount: favourites.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Favourite favourite = favourites[index];
                    return Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        const Divider(
                          height: 40,
                        ),
                        ListArtworkWidget(
                          title: favourite.artworkTitle,
                          onPress: () async {
                            final Store<AppState> store = StoreProvider.of<AppState>(context);
                            await store.dispatch(IsArtworkFavourite(
                              userId: store.state.user!.uid,
                              artworkId: favourite.artworkId,
                            ));
                            await store.dispatch(FetchScannedArtwork(artworkId: favourite.artworkId));
                            store.dispatch(const SetRouteArtworkIndex(1));
                            Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                          },
                          imageLink: favourite.artworkPictureUrl,
                          subtitle: favourite.artistName,
                        ),
                      ],
                    );
                  },
                ),
        );
      },
    );
  }
}
