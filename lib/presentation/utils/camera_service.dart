import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../camera_page.dart';

class CameraService {
  Future<void> openCamera(BuildContext context) async {
    CameraController controller;
    List<CameraDescription> cameras;

    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();

    Navigator.push(
      context,
      MaterialPageRoute<CameraPageState>(
        builder: (BuildContext context) => CameraPageState(controller),
      ),
    );
  }
}
