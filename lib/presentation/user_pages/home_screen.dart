import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/get_artists/get_artists.dart';
import '../../actions/get_artworks/get_artworks.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../../actions/user_s_actions/get_all_styles/get_all_styles.dart';
import '../../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';
import '../../models/artwork_for_art_movements/artwork_for_art_movements.dart';
import '../../models/artwork_for_top/artwork_for_top.dart';
import '../containers/artworks_for_art_movements_container.dart';
import '../containers/top_artists_container.dart';
import '../containers/top_artworks_container.dart';
import '../utils/custom_bottom_navigation_bar.dart';
import '../utils/custom_drawer.dart';
import '../utils/extensions.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> onItemTapped(int index) async {
    setState(() {
      selectedIndex = index;
    });
    switch (index) {
      case 0:
        break;
      case 1:
        selectedIndex = 0;
        Navigator.pushNamed(context, '/qrCodeScanScreenPage');
      case 2:
        Navigator.pushReplacementNamed(context, '/profilePage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text('Explore', style: TextStyle(color: Colors.black)),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'POPULAR ARTWORKS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
                onTap: () {
                  context.dispatch(const GetArtworks());
                  context.dispatch(const SetRouteArtworkIndex(2));
                  Navigator.pushReplacementNamed(context, '/artworksPage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TopArtworksContainer(
                builder: (BuildContext context, List<ArtworkForTop>? artworks) {
                  if (artworks == null || artworks.isEmpty) {
                    return const Center(child: Text('No artworks found.'));
                  }
                  return SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: artworks.length,
                      itemBuilder: (BuildContext context, int index) {
                        final ArtworkForTop artwork = artworks[index];
                        return Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 100,
                                    child: Image.network(
                                      artwork.pictureUrl,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Text(artwork.title),
                                ],
                              ),
                              onTap: () async {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                await store.dispatch(
                                    IsArtworkFavourite(userId: context.store.state.user!.uid, artworkId: artwork.uid));
                                await store.dispatch(FetchScannedArtwork(artworkId: artwork.uid));
                                await store.dispatch(const SetRouteArtworkIndex(4));
                                Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                              },
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                height: 64,
              ),
              GestureDetector(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'ARTISTS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
                onTap: () {
                  context.dispatch(const GetArtists());
                  context.dispatch(const SetRouteArtistIndex(4));
                  Navigator.pushNamed(context, '/artistsPage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TopArtistsContainer(
                builder: (BuildContext context, List<Artist>? artists) {
                  if (artists == null || artists.isEmpty) {
                    return const Center(child: Text('No artists found.'));
                  }
                  return SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: artists.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Artist artist = artists[index];
                        return Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 100,
                                    child: Image.network(
                                      artist.pictureUrl,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Text('${artist.firstName} ${artist.lastName}'),
                                ],
                              ),
                              onTap: () async {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                await store.dispatch(FetchSelectedArtist(artistId: artist.uid));
                                await store.dispatch(const SetRouteArtistIndex(5));
                                Navigator.pushReplacementNamed(context, '/artistDetailsPage');
                              },
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                height: 64,
              ),
              GestureDetector(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'ART MOVEMENTS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
                onTap: () {
                  context.dispatch(const GetAllStyles());
                  Navigator.pushNamed(context, '/artworksWithAllStylePage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ArtworksForArtMovementContainer(
                builder: (BuildContext context, List<ArtworkForArtMovements>? artworksForArtMovements) {
                  if (artworksForArtMovements == null || artworksForArtMovements.isEmpty) {
                    return const Center(child: Text('No artworks found.'));
                  }
                  return SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: artworksForArtMovements.length,
                      itemBuilder: (BuildContext context, int index) {
                        final ArtworkForArtMovements artwork = artworksForArtMovements[index];
                        return Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 100,
                                    child: Image.network(
                                      artwork.pictureUrl,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Text(artwork.style),
                                ],
                              ),
                              onTap: () async {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                await store.dispatch(
                                    IsArtworkFavourite(userId: context.store.state.user!.uid, artworkId: artwork.uid));
                                await store.dispatch(FetchScannedArtwork(artworkId: artwork.uid));

                                await store.dispatch(const SetRouteArtworkIndex(4));
                                Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                              },
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
