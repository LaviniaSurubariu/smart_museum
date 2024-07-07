import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../../actions/get_top_artists/get_top_artists.dart';
import '../../actions/get_top_artworks/get_top_artworks.dart';
import '../../actions/user_s_actions/signout/sign_out.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../utils/profile_menu_widget.dart';
import '../utils/custom_admin_drawer.dart';
import '../utils/custom_alert_dialog_two_buttons.dart';
import '../utils/custom_buttom_navigation_bar_admin.dart';
import '../utils/extensions.dart';

class ProfileAdminPage extends StatefulWidget {
  const ProfileAdminPage({super.key});

  @override
  State<ProfileAdminPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileAdminPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 2;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    Future<void> onItemTapped(int index) async {
      setState(() {
        selectedIndex = index;
      });
      switch (index) {
        case 0:
          context.dispatch(const GetTopArtworks());
          context.dispatch(const GetTopArtists());
          Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
        case 1:
          context.dispatch(const GetListArtworksWithoutQrCode());
          Navigator.pushReplacementNamed(context, '/artworksWithoutQRCodePage');
        case 2:
          break;
      }
    }

    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
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
            title: const Text('Profile', style: TextStyle(color: Colors.black)),
          ),
          drawer: const CustomAdminDrawer(),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black12,
                            backgroundImage: user.pictureUrl != null ? NetworkImage(user.pictureUrl!) : null,
                            child: user.pictureUrl != null
                                ? null
                                : const Icon(LineAwesomeIcons.user, size: 60, color: Colors.black)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text('${user.firstName} ${user.lastName}', style: const TextStyle(color: Colors.black, fontSize: 24)),
                  Text(user.email, style: const TextStyle(color: Colors.black, fontSize: 16)),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/updateProfilePage');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                      child: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Divider(),
                  const SizedBox(height: 10),
                  ProfileMenuWidget(title: 'Billing Details', icon: LineAwesomeIcons.wallet, onPress: () {}),
                  ProfileMenuWidget(title: 'Saved', icon: LineAwesomeIcons.heart, onPress: () {}),
                  const Divider(),
                  const SizedBox(height: 10),
                  ProfileMenuWidget(title: 'Information', icon: LineAwesomeIcons.info, onPress: () {}),
                  ProfileMenuWidget(
                    title: 'Logout',
                    icon: LineAwesomeIcons.alternate_sign_out,
                    textColor: Colors.red,
                    endIcon: false,
                    onPress: () {
                      showDialog<CustomAlertDialogTwoButtons>(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomAlertDialogTwoButtons(
                              title: 'Logout',
                              content: 'Are you sure you want to logout?',
                              firstButtonText: 'yes',
                              firstButtonColor: Colors.white30,
                              iconData: LineAwesomeIcons.alternate_sign_out,
                              iconColor: Colors.grey,
                              onFirstButtonPressed: () {
                                context.dispatch(const SignOut());
                                Navigator.pushReplacementNamed(context, '/entryPage');
                              },
                              secondButtonText: 'no',
                              secondButtonColor: Colors.grey,
                              onSecondButtonPressed: () {
                                Navigator.pop(context);
                              },
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBarAdmin(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        );
      },
    );
  }
}
