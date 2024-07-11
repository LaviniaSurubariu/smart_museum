import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../../actions/get_artists/get_artists.dart';
import '../../actions/get_artworks/get_artworks.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../../models/app_state/app_state.dart';
import '../../models/artist/artist.dart';
import '../../models/artwork_for_top/artwork_for_top.dart';
import '../containers/top_artists_container.dart';
import '../containers/top_artworks_container.dart';
import '../utils/custom_admin_drawer.dart';
import '../utils/custom_bottom_navigation_bar_admin.dart';
import '../utils/extensions.dart';

class AdminScreenPage extends StatefulWidget {
  const AdminScreenPage({super.key});

  @override
  State<AdminScreenPage> createState() => _AdminScreenPageState();
}

class _AdminScreenPageState extends State<AdminScreenPage> {
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
        context.dispatch(const GetListArtworksWithoutQrCode());
        Navigator.pushReplacementNamed(context, '/artworksWithoutQRCodePage');
      case 2:
        Navigator.pushReplacementNamed(context, '/profileAdminPage');
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
        title: const Text(''),
      ),
      drawer: const CustomAdminDrawer(),
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
                      'EDIT ARTWORKS',
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
                  Navigator.pushReplacementNamed(context, '/artworksListAdminPage');
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
                    height: 160,
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
                                  SizedBox(
                                      width: 120,
                                      child: Text(
                                        artwork.title,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                              onTap: () async {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                await store.dispatch(FetchScannedArtwork(artworkId: artwork.uid));
                                await store.dispatch(const SetRouteAdminArtworkIndex(1));
                                Navigator.pushReplacementNamed(context, '/artworkEditPage');
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
                        'EDIT ARTISTS',
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
                    Navigator.pushReplacementNamed(context, '/artistsListAdminPage');
                  }),
              const SizedBox(
                height: 16,
              ),
              TopArtistsContainer(
                builder: (BuildContext context, List<Artist>? artists) {
                  if (artists == null || artists.isEmpty) {
                    return const Center(child: Text('No artists found.'));
                  }
                  return SizedBox(
                    height: 160,
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
                                  SizedBox(
                                      width: 120,
                                      child: Text(
                                        '${artist.firstName} ${artist.lastName}',
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                              onTap: () async {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                await store.dispatch(FetchSelectedArtist(artistId: artist.uid));
                                await store.dispatch(const SetRouteAdminArtistIndex(1));
                                Navigator.pushReplacementNamed(context, '/artistEditPage');
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
      bottomNavigationBar: CustomBottomNavigationBarAdmin(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
