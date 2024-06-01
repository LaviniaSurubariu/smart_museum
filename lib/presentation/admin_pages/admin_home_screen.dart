import 'package:flutter/material.dart';

import '../utils/customAdminDrawer.dart';
import '../utils/customButtomNavigationBarAdmin.dart';

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
        Navigator.pushReplacementNamed(context, '/generateQrCodePage');
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
      bottomNavigationBar: CustomBottomNavigationBarAdmin(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
