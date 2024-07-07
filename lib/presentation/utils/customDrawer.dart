import 'package:flutter/material.dart';

import '../../actions/get_comments/get_comments.dart';
import '../../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../../actions/user_s_actions/get_favourites/get_favourites.dart';
import '../../actions/user_s_actions/get_top_artists/get_top_artists.dart';
import 'extensions.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
                context.dispatch(const GetTopArtists());
                context.dispatch(const GetArtworksWithStyle());
                Navigator.pushReplacementNamed(context, '/homeScreenPage');
              },
            ),
            ListTile(
              title: const Text(
                'PROFILE',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/profilePage');
              },
            ),
            ListTile(
              title: const Text(
                'FAVOURITES',
              ),
              onTap: () {
                context.dispatch(GetFavourites(userId: context.store.state.user!.uid));
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/favouritesPage');
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
          ],
        ),
      ),
    );
  }
}
