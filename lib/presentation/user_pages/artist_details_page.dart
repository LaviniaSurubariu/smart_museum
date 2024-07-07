import 'package:flutter/material.dart';

import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../models/artist/artist.dart';

import '../containers/selected_artist_container.dart';
import '../utils/extensions.dart';

class ArtistDetailsPage extends StatefulWidget {
  const ArtistDetailsPage({super.key});

  @override
  State<ArtistDetailsPage> createState() => _ArtistDetailsPage();
}

class _ArtistDetailsPage extends State<ArtistDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SelectedArtistContainer(builder: (BuildContext context, Artist selectedArtist) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              switch (context.store.state.routeArtistIndex) {
                case 3:
                  Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                case 4:
                  Navigator.pushReplacementNamed(context, '/artistsPage');
                default:
                  context.dispatch(const GetTopArtworks());
                  context.dispatch(const GetTopArtists());
                  context.dispatch(const GetArtworksWithStyle());
                  Navigator.pushReplacementNamed(context, '/homeScreenPage');
              }
            },
          ),
          title: Text(
            '${selectedArtist.firstName} ${selectedArtist.lastName}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.network(
              selectedArtist.pictureUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${selectedArtist.firstName} ${selectedArtist.lastName}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${selectedArtist.birthdate?.day ?? ''}${selectedArtist.birthdate?.day != null ? '.' : ''}${selectedArtist.birthdate?.month ?? ''}${selectedArtist.birthdate?.month != null ? '.' : ''}${selectedArtist.birthdate?.year ?? ''} - ${selectedArtist.deathDate?.day ?? ''}${selectedArtist.deathDate?.day != null ? '.' : ''}${selectedArtist.deathDate?.month ?? ''}${selectedArtist.deathDate?.month != null ? '.' : ''}${selectedArtist.deathDate?.year ?? ''}',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: <TextSpan>[
                        const TextSpan(text: 'Description: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${selectedArtist.description}\n'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
