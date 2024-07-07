import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../actions/set/set.dart';
import '../../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../utils/extensions.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  late MobileScannerController cameraController;
  String artworkId = '';

  @override
  void initState() {
    super.initState();
    cameraController = MobileScannerController(returnImage: true, detectionTimeoutMs: 2500);
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          MobileScanner(
            controller: cameraController,
            onDetect: (BarcodeCapture capture) async {
              final List<Barcode> barcodes = capture.barcodes;
              for (final Barcode barcode in barcodes) {
                artworkId = barcode.rawValue!.split('https://')[1];
                context.dispatch(FetchScannedArtwork(artworkId: artworkId));
              }
              await Future<void>.delayed(const Duration(milliseconds: 500), () => null);
              if (context.store.state.scannedArtwork != null) {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return GestureDetector(
                      child: SizedBox(
                        height: 120,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 120,
                                height: 120,
                                child: Image.network(context.store.state.scannedArtwork!.pictureUrl, fit: BoxFit.cover),
                              ),
                              Expanded(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          const SizedBox(height: 30),
                                          Text(
                                            context.store.state.scannedArtwork!.title,
                                            style: const TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            '${context.store.state.scannedArtwork!.artistFirstName} ${context.store.state.scannedArtwork!.artistLastName}',
                                            style: const TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        context.dispatch(SetSelectedArtwork(context.store.state.scannedArtwork!));
                        context.dispatch(IsArtworkFavourite(
                            userId: context.store.state.user!.uid, artworkId: context.store.state.scannedArtwork!.uid));
                        context.dispatch(const SetRouteArtworkIndex(0));
                        while (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                        Navigator.pushReplacementNamed(context, '/artworkDetailsPage');
                      },
                    );
                  },
                );
              }
            },
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 8,
            child: SafeArea(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16.0,
                child: IconButton(
                  iconSize: 16.0,
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
                  onPressed: () {
                    context.dispatch(const GetTopArtworks());
                    context.dispatch(const GetTopArtists());
                    context.dispatch(const GetArtworksWithStyle());
                    Navigator.pushReplacementNamed(context, '/homeScreenPage');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
