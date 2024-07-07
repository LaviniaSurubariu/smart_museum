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
import '../../models/artwork/artwork.dart';
import '../containers/artworks_container.dart';
import '../utils/ListArtworkWidget.dart';
import '../utils/extensions.dart';

class ArtworksPage extends StatefulWidget {
  const ArtworksPage({super.key});

  @override
  State<ArtworksPage> createState() => _ArtworksPageState();
}

class _ArtworksPageState extends State<ArtworksPage> {
  @override
  Widget build(BuildContext context) {
    return ArtworksContainer(
      builder: (BuildContext context, List<Artwork>? artworks) {
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
              'POPULAR ARTWORKS',
              style: TextStyle(fontSize: 16),
            ),
          ),
          body: artworks == null || artworks.isEmpty
              ? const Center(child: Text('No artworks found.'))
              : ListView.builder(
                  itemCount: artworks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Artwork artwork = artworks[index];
                    return Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        const Divider(
                          height: 40,
                        ),
                        ListArtworkWidget(
                          title: artwork.title,
                          onPress: () async {
                            final Store<AppState> store = StoreProvider.of<AppState>(context);
                            await store.dispatch(
                                IsArtworkFavourite(userId: context.store.state.user!.uid, artworkId: artwork.uid));
                            await store.dispatch(FetchScannedArtwork(artworkId: artwork.uid));

                            await store.dispatch(const SetRouteArtworkIndex(2));
                            Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                          },
                          imageLink: artwork.pictureUrl,
                          subtitle: '${artwork.artistFirstName} ${artwork.artistLastName}',
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
