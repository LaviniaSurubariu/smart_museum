import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../utils/customAdminDrawer.dart';
import '../utils/customButtomNavigationBarAdmin.dart';

class GenerateQrCodePage extends StatefulWidget {
  const GenerateQrCodePage({super.key});

  @override
  State<GenerateQrCodePage> createState() => _GenerateQrCodePageState();
}

class _GenerateQrCodePageState extends State<GenerateQrCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    Future<void> onItemTapped(int index) async {
      setState(() {
        selectedIndex = index;
      });
      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
        case 1:
          break;
        case 2:
          Navigator.pushReplacementNamed(context, '/profileAdminPage');
      }
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text(''),
      ),
      drawer: const CustomAdminDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              onSubmitted: (String value) {
                setState(
                  () {
                    qrData = value;
                    print(qrData);
                  },
                );
              },
            ),
            if (qrData != null) PrettyQrView.data(data: 'https://${qrData!}'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBarAdmin(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
