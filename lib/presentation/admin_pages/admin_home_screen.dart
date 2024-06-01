import 'package:flutter/material.dart';

import '../utils/customButtomNavigationBarAdmin.dart';
import '../utils/customDrawer.dart';

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
        title: const Text(''),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: CustomBottomNavigationBarAdmin(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
