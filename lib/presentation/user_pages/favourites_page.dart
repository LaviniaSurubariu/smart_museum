import 'package:flutter/material.dart';

import '../utils/ListArtworkWidget.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 40,
          ),
          ListArtworkWidget(
            title: 'Artwork',
            onPress: () {
              Navigator.pushNamed(context, '/artworkDetailsPage');
            },
            imageLink:
                'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FNAyQyoh9bDh2JTTJOCKW702Io8L2%2Fprofile.png?alt=media&token=c97ae17b-b938-4f33-98f9-23715af4afb6',
            subtitle: 'Artist',
          ),
          const Divider(
            height: 40,
          ),
          ListArtworkWidget(
            title: 'Artwork',
            onPress: () {
              Navigator.pushNamed(context, '/artworkDetailsPage');
            },
            imageLink:
                'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FmlYl3oG8ctP5uZsVRNG469O6qJV2%2Fprofile.png?alt=media&token=e3212f1b-d073-4d6e-8023-7ef27c3f0f25',
            subtitle: 'Artist',
          ),
          const Divider(
            height: 40,
          ),
          ListArtworkWidget(
            title: 'Artwork',
            onPress: () {
              Navigator.pushNamed(context, '/artworkDetailsPage');
            },
            imageLink:
                'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FF6wt0A0RVUWjnr3mo704T9ljb2A2%2Fprofile.png?alt=media&token=34f71dee-2b3a-4e62-8f16-93073a823bcb',
            subtitle: 'Artist',
          ),
          const Divider(
            height: 40,
          ),
          ListArtworkWidget(
            title: 'Artwork',
            onPress: () {
              Navigator.pushNamed(context, '/artworkDetailsPage');
            },
            imageLink:
                'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2Fe6FS4ybGCjUkVKc32SZug4gAbo23%2Fprofile.png?alt=media&token=990cf699-d6ac-48b6-b90a-f1facebb519b',
            subtitle: 'Artist',
          ),
        ],
      ),
    );
  }
}
