import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../containers/selected_artwork_without_qr_code_containter.dart';
import '../utils/extensions.dart';

class GenerateQrCodePage extends StatefulWidget {
  const GenerateQrCodePage({super.key});

  @override
  State<GenerateQrCodePage> createState() => _GenerateQrCodePageState();
}

class _GenerateQrCodePageState extends State<GenerateQrCodePage> {
  String? qrData;
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SelectedArtworkWithoutQrCodeContainer(
      builder: (BuildContext context, ArtworkWithoutQrCode artworkWithoutQrCode) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Generate QR Code'),
            leading: IconButton(
              onPressed: () {
                context.dispatch(const GetListArtworksWithoutQrCode());
                Navigator.pushReplacementNamed(context, '/artworksWithoutQRCodePage');
              },
              icon: const Icon(LineAwesomeIcons.angle_left),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Artwork to generate QR code for:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(artworkWithoutQrCode.title),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54, minimumSize: const Size(double.infinity, 50)),
                  onPressed: () async {
                    setState(() {
                      qrData = artworkWithoutQrCode.id;
                    });
                    await _saveQrCodeToPhoneAndUpload(context, artworkWithoutQrCode.id, artworkWithoutQrCode.title);
                  },
                  child: const Text('Generate QR Code', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (qrData != null)
                  RepaintBoundary(
                    key: _globalKey,
                    child: Container(
                      color: Colors.white, // Add background color
                      padding: const EdgeInsets.all(16.0),
                      child: PrettyQrView.data(
                        data: 'https://${qrData!}',
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _saveQrCodeToPhoneAndUpload(BuildContext context, String qrData, String qrDataTitle) async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500), () => null);

      final RenderRepaintBoundary? boundary = _globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;

      final ui.Image? image = await boundary?.toImage(pixelRatio: 3.0);
      final ByteData? byteData = await image?.toByteData(format: ui.ImageByteFormat.png);

      final Uint8List? pngBytes = byteData?.buffer.asUint8List();

      final Reference storageRef =
          FirebaseStorage.instance.ref().child('artworks').child(qrData).child('${qrDataTitle}_qr');
      await storageRef.putData(pngBytes!, SettableMetadata(contentType: 'image/png'));

      final String downloadUrl = await storageRef.getDownloadURL();
      await FirebaseFirestore.instance.collection('artworks').doc(qrData).update(<Object, Object?>{
        'qrCodeUrl': downloadUrl,
      });

      await ImageGallerySaver.saveImage(pngBytes, quality: 100, name: '${qrDataTitle}_qr');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('QR code saved to gallery!')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to save QR code: $e')));
    }
  }
}
