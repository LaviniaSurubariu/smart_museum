import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';
import '../containers/artists_container.dart';
import '../utils/ListArtworkWidget.dart';
import '../utils/extensions.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({super.key});

  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
  @override
  Widget build(BuildContext context) {
    return ArtistsContainer(
      builder: (BuildContext context, List<Artist>? artists) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                context.dispatch(const GetArtworksWithStyle());
                Navigator.pushReplacementNamed(context, '/homeScreenPage');
              },
            ),
            title: const Text(
              'ARTISTS',
              style: TextStyle(fontSize: 16),
            ),
          ),
          body: artists == null || artists.isEmpty
              ? const Center(child: Text('No artists found.'))
              : ListView.builder(
                  itemCount: artists.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Artist artist = artists[index];
                    return Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        const Divider(
                          height: 40,
                        ),
                        ListArtworkWidget(
                          title: '${artist.firstName} ${artist.lastName}',
                          onPress: () async {
                            final Store<AppState> store = StoreProvider.of<AppState>(context);
                            await store.dispatch(FetchSelectedArtist(artistId: artist.uid));
                            await store.dispatch(const SetRouteArtistIndex(4));
                            Navigator.pushReplacementNamed(context, '/artistDetailsPage');
                          },
                          imageLink: artist.pictureUrl,
                          subtitle: '',
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
