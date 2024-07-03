import 'package:flutter/material.dart';

import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
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
                          onPress: () {
                            context.dispatch(FetchSelectedArtist(artistId: artist.uid));
                            context.dispatch(const SetRouteIndex(4));
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
