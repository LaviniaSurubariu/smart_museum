import 'package:flutter/material.dart';

import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../actions/user_s_actions/get_by_style/get_by_style.dart';
import '../../models/artwork_for_art_movements/artwork_for_art_movements.dart';
import '../containers/artworks_with_all_styles_container.dart';
import '../utils/list_artwork_widget.dart';
import '../utils/extensions.dart';

class ArtworksWithAllStylesPage extends StatefulWidget {
  const ArtworksWithAllStylesPage({super.key});

  @override
  State<ArtworksWithAllStylesPage> createState() => _ArtworksWithAllStylesPageState();
}

class _ArtworksWithAllStylesPageState extends State<ArtworksWithAllStylesPage> {
  @override
  Widget build(BuildContext context) {
    return ArtworksWithAllStylesContainer(
      builder: (BuildContext context, List<ArtworkForArtMovements>? artworks) {
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
              'STYLE ARTWORKS',
              style: TextStyle(fontSize: 16),
            ),
          ),
          body: artworks == null || artworks.isEmpty
              ? const Center(child: Text('No artworks found.'))
              : ListView.builder(
                  itemCount: artworks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ArtworkForArtMovements artwork = artworks[index];
                    return Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        const Divider(
                          height: 40,
                        ),
                        ListArtworkWidget(
                          title: artwork.style,
                          onPress: () async {
                            context.dispatch(SetSelectedStyle(artwork.style));
                            context.dispatch(GetByStyle(style: artwork.style));
                            Navigator.pushNamed(context, '/artworksByStylePage');
                          },
                          imageLink: artwork.pictureUrl,
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
