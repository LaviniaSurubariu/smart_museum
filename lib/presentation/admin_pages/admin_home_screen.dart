import 'package:flutter/material.dart';

import '../../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../../actions/get_artworks/get_artworks.dart';
import '../utils/customAdminDrawer.dart';
import '../utils/customButtomNavigationBarAdmin.dart';
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
