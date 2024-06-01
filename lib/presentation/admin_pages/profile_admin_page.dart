import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/user_s_actions/signout/sign_out.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../utils/ProfileMenuWidget.dart';
import '../utils/customAdminDrawer.dart';
import '../utils/customAlertDialogTwoButtons.dart';
import '../utils/customButtomNavigationBarAdmin.dart';
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
          Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
        case 1:
          Navigator.pushReplacementNamed(context, '/generateQrCodePage');
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
                  /// -- IMAGE
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

                  /// -- BUTTON
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

                  /// -- MENU
                  ProfileMenuWidget(title: 'Settings', icon: LineAwesomeIcons.cog, onPress: () {}),
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
