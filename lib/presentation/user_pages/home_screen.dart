import 'package:flutter/material.dart';

import '../utils/customButtomNavigationBar.dart';
import '../utils/customDrawer.dart';

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
                  // Navigator.pushNamed(context, '/popularArtworksPage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FNAyQyoh9bDh2JTTJOCKW702Io8L2%2Fprofile.png?alt=media&token=c97ae17b-b938-4f33-98f9-23715af4afb6',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('The birth of Venus'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/users%2FmlYl3oG8ctP5uZsVRNG469O6qJV2%2Fprofile.png?alt=media&token=e3212f1b-d073-4d6e-8023-7ef27c3f0f25',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Girl with a Pearl Earring'),
                      ],
                    ),
                  ],
                ),
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
                  // Navigator.pushNamed(context, '/ArtistsPage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artists%2Frembrandt.jpg?alt=media&token=91341e79-7177-40aa-bc1c-6f23da31da13',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Rembrandt'),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artists%2FClaude%20Monet.webp?alt=media&token=e35b88d7-f40c-477f-a596-33a2d33d8137',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Claude Monet'),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artists%2FVincent%20van%20Gogh.webp?alt=media&token=8c01e5e7-5bbd-47de-8c79-7eaaa5debf3d',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Vincent van Gogh'),
                      ],
                    ),
                  ],
                ),
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
                  // Navigator.pushNamed(context, '/ArtMovementsPage');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artsMovements%2FImpressionism.jpg?alt=media&token=1b8d7043-006c-49e5-b597-ddabac9c1551',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Impressionism'),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artsMovements%2FRenaissance.jpeg?alt=media&token=2b74261e-7f10-4b41-acd3-4d548a46ebd3',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Renaissance'),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/smartmuseum-b4776.appspot.com/o/artsMovements%2FRomanticism.webp?alt=media&token=21aa73c3-ef45-46b7-883e-5339645b4c08',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const Text('Romanticism'),
                      ],
                    ),
                  ],
                ),
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
