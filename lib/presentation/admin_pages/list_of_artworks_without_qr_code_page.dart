import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../containers/artworks_without_qr_code_container.dart';

class ArtworksWithoutQRCodePage extends StatelessWidget {
  const ArtworksWithoutQRCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artworks without QR Code'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
      ),
      body: ArtworksWithoutQrCodeContainer(
        builder: (BuildContext context, List<ArtworkWithoutQrCode>? artworks) {
          if (artworks == null || artworks.isEmpty) {
            return const Center(child: Text('No artworks without QR code'));
          }

          return ListView.builder(
            itemCount: artworks.length,
            itemBuilder: (BuildContext context, int index) {
              final ArtworkWithoutQrCode artwork = artworks[index];
              return ListTile(
                title: Text(artwork.title),
              );
            },
          );
        },
      ),
    );
  }
}
