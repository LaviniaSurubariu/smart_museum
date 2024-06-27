import 'package:flutter/material.dart';

class CustomBottomNavigationBarAdmin extends StatelessWidget {
  const CustomBottomNavigationBarAdmin({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.qr_code,
          ),
          label: 'Add',

        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: const Color.fromRGBO(112, 197, 225, 1),
      onTap: onTap,
    );
  }
}
