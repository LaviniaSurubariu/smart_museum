import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';
import '../containers/artists_container.dart';
import '../utils/ListArtworkWidget.dart';

class ArtistsListAdminPage extends StatefulWidget {
  const ArtistsListAdminPage({super.key});

  @override
  State<ArtistsListAdminPage> createState() => _ArtistsListAdminPageState();
}

class _ArtistsListAdminPageState extends State<ArtistsListAdminPage> {
  @override
  Widget build(BuildContext context) {
    return ArtistsContainer(
      builder: (BuildContext context, List<Artist>? artists) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
              },
            ),
            title: const Text(
              'ARTISTS FOR EDITING',
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
                      Navigator.pushReplacementNamed(context, '/artistEditPage');
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
