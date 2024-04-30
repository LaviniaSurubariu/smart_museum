import 'package:flutter/material.dart';
import 'package:smart_museum/presentation/utils/customTheme.dart';

import '../models/user/app_user/app_user.dart';
import 'containers/app_user_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return MaterialApp(
          theme: CustomTheme.themeData,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Smart Museum'),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('${user.firstName} ${user.lastName}'),
                    accountEmail: Text(user.email),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/entry page photo.jpg'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: const Text('Privacy'),
                    onTap: () {
                      // Navigați la ecranul Privacy
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('Purchase History'),
                    onTap: () {
                      // Navigați la ecranul Purchase History
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('Help & Support'),
                    onTap: () {
                      // Navigați la ecranul Help & Support
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {
                      // Navigați la ecranul Help & Support
                    },
                  ),
                  // Adăugați mai multe ListTile aici pentru alte opțiuni de meniu
                ],
              ),
            ),
            body: const Center(
              child: Text('Hello, World!'),
            ),
          ),
        );
      },
    );
  }
}
