import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profilePage');
          },
        ),
        title: const Text(''),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'More about the app',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.breeSerif().fontFamily),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'What you can do in the app:',
                    style: TextStyle(
                      color: Color.fromRGBO(124, 163, 161, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                const ListTile(
                  leading: Icon(LineAwesomeIcons.user, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Customize your profile', style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.qr_code_scanner_outlined, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Scan QR codes from museum artworks for more details', style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.audiotrack, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Buy subscription for more features', style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(LineAwesomeIcons.heart_1, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Add artworks to favourites to see them other time', style: TextStyle(fontSize: 14)),
                ),
                const ListTile(
                  leading: Icon(Icons.messenger_outline, color: Color.fromRGBO(112, 197, 225, 1)),
                  title: Text('Talk with other people about the experience', style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
