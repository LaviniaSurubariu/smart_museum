import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/app_action.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/get_all_styles/get_all_styles.dart';
import '../../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../../models/app_state/app_state.dart';
import '../../models/artwork_by_style/artwork_by_style.dart';
import '../containers/artworks_by_style_container.dart';
import '../utils/extensions.dart';
import '../utils/list_artwork_widget.dart';

class ArtworksByStylePage extends StatefulWidget {
  const ArtworksByStylePage({super.key});

  @override
  State<ArtworksByStylePage> createState() => _ArtworksByStylePageState();
}

class _ArtworksByStylePageState extends State<ArtworksByStylePage> {
  @override
  Widget build(BuildContext context) {
    return ArtworksByStyleContainer(
      builder: (BuildContext context, List<ArtworkByStyle>? artworks) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                context.dispatch(const GetAllStyles());
                Navigator.pushNamed(context, '/artworksWithAllStylePage');
              },
            ),
            title: Text(
              context.store.state.selectedStyle!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          body: artworks == null || artworks.isEmpty
              ? const Center(child: Text('No artworks found.'))
              : ListView.builder(
                  itemCount: artworks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ArtworkByStyle artwork = artworks[index];
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
                            await store.dispatch(FetchScannedArtwork(artworkId: artwork.uid, result: _onResult));

                            await store.dispatch(const SetRouteArtworkIndex(3));
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

  void _onResult(AppAction action) {}
}
