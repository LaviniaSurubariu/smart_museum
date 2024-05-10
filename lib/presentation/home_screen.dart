import 'package:flutter/material.dart';
import 'utils/camera_service.dart';
import 'utils/customButtomNavigationBar.dart';
import 'utils/customDrawer.dart';

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
        final CameraService cameraService = CameraService();
        await cameraService.openCamera(context);
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
        title: const Text(''),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
