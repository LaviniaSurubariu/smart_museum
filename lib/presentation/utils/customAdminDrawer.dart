import 'package:flutter/material.dart';

import '../../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../../actions/get_comments/get_comments.dart';
import 'extensions.dart';

class CustomAdminDrawer extends StatelessWidget {
  const CustomAdminDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 100,
              child: Stack(
                children: <Widget>[
                  const SizedBox(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'HOME',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
              },
            ),
            ListTile(
              title: const Text(
                'PROFILE',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/profileAdminPage');
              },
            ),
            ListTile(
              title: const Text(
                'FORUM',
              ),
              onTap: () {
                context.dispatch(const GetComments());
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/forumPage');
              },
            ),
            ListTile(
              title: const Text(
                'ADD ARTIST',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/addArtistPage');
              },
            ),
            ListTile(
              title: const Text(
                'ADD ARTWORK',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/addArtworkPage');
              },
            ),
            ListTile(
              title: const Text(
                'GENERATE QR CODE',
              ),
              onTap: () {
                Navigator.pop(context);
                context.dispatch(const GetListArtworksWithoutQrCode());
                Navigator.pushReplacementNamed(context, '/artworksWithoutQRCodePage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
