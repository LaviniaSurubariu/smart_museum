import 'package:flutter/material.dart';
import 'utils/customButtomNavigationBar.dart';
import 'utils/customTheme.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/profilePage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: CustomTheme.themeData,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Smart Museum'),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ));
  }
}
