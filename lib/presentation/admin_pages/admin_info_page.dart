import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../utils/extensions.dart';

class AdminInfoPage extends StatefulWidget {
  const AdminInfoPage({super.key});

  @override
  State<AdminInfoPage> createState() => _AdminInfoPageState();
}

class _AdminInfoPageState extends State<AdminInfoPage> {
  Future<void> _waitForNumberOfUsers() async {
    while (context.store.state.numberOfRegisteredUsers == null ||
        context.store.state.numberOfAddedArtworks == null ||
        context.store.state.numberOfAddedArtists == null ||
        context.store.state.numberOfFavouritesArtworks == null ||
        context.store.state.numberOfMessages == null) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: _waitForNumberOfUsers(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(child: Text('Error: ${snapshot.error}')),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/profileAdminPage');
                  },
                ),
                title: const Text(''),
              ),
              body: context.store.state.numberOfRegisteredUsers == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Admin Account',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: GoogleFonts.breeSerif().fontFamily),
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
                              const Text(
                                'This is an admin account. You have access to the admin panel.',
                                style: TextStyle(
                                  color: Color.fromRGBO(124, 163, 161, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "You can add and manage artworks and artists for the museum and generate QR codes for artworks. You can see forum's messages and you also have a profile that can be edited. You can see below more information about the app.",
                                style: TextStyle(
                                  color: Color.fromRGBO(124, 163, 161, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'You can see below more information about the app.',
                                style: TextStyle(
                                  color: Color.fromRGBO(124, 163, 161, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              ListTile(
                                leading: const Icon(LineAwesomeIcons.users, color: Color.fromRGBO(112, 197, 225, 1)),
                                title: Text(
                                    'Number of users who are registered to the app: ${context.store.state.numberOfRegisteredUsers}',
                                    style: const TextStyle(fontSize: 14)),
                              ),
                              ListTile(
                                leading: const Icon(Icons.palette, color: Color.fromRGBO(112, 197, 225, 1)),
                                title: Text('Number of added artworks: ${context.store.state.numberOfAddedArtworks}',
                                    style: const TextStyle(fontSize: 14)),
                              ),
                              ListTile(
                                leading:
                                    const Icon(LineAwesomeIcons.user_friends, color: Color.fromRGBO(112, 197, 225, 1)),
                                title: Text('Number of added artists: ${context.store.state.numberOfAddedArtists}',
                                    style: const TextStyle(fontSize: 14)),
                              ),
                              ListTile(
                                leading: const Icon(LineAwesomeIcons.heart_1, color: Color.fromRGBO(112, 197, 225, 1)),
                                title: Text(
                                    'Number of favourites artworks: ${context.store.state.numberOfFavouritesArtworks}',
                                    style: const TextStyle(fontSize: 14)),
                              ),
                              ListTile(
                                leading: const Icon(Icons.messenger_outline, color: Color.fromRGBO(112, 197, 225, 1)),
                                title: Text('Number of messages on forum: ${context.store.state.numberOfMessages}',
                                    style: const TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            );
          }
        });
  }
}
