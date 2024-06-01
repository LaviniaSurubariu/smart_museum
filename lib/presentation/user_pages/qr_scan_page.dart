import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(
            controller: MobileScannerController(detectionSpeed: DetectionSpeed.noDuplicates, returnImage: true),
            onDetect: (BarcodeCapture capture) {
              final List<Barcode> barcodes = capture.barcodes;
              final Uint8List? image = capture.image;
              for (final Barcode barcode in barcodes) {
                print('Barcode found: ${barcode.rawValue}');
              }
              if (image != null) {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 120,
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8),
                              width: 120,
                              height: 120,
                              child: Image.memory(image, fit: BoxFit.cover),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(barcodes.first.rawValue ?? ''),
                              ),
                            ),
                          ],
                        ),
                      ),
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
