import 'package:flutter/material.dart';

import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../../models/favourite/favourite.dart';
import '../containers/favourites_container.dart';
import '../utils/ListArtworkWidget.dart';
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
                          onPress: () {
                            context.dispatch(FetchScannedArtwork(artworkId: favourite.artworkId));
                            context.dispatch(SetSelectedArtwork(context.store.state.scannedArtwork!));
                            context.dispatch(IsArtworkFavourite(
                                userId: context.store.state.user!.uid,
                                artworkId: context.store.state.scannedArtwork!.uid));
                            Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                          },
                          imageLink: favourite.artworkPictureUrl,
                          subtitle: favourite.artistName,
                        ),
                        const Divider(
                          height: 40,
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
