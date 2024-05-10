import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPageState extends StatefulWidget {
  const CameraPageState(this.controller, {super.key});

  final CameraController controller;

  @override
  State<CameraPageState> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: CameraPreview(widget.controller),
            ),
          ),
          GestureDetector(
            onTap: () async {
              final XFile file = await widget.controller.takePicture();
              print('Picture saved to ${file.path}');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.camera,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
