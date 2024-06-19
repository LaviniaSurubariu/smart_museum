import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/user_s_actions/signout/sign_out.dart';
import '../../models/user/app_user/app_user.dart';
import '../containers/app_user_container.dart';
import '../utils/ProfileMenuWidget.dart';
import '../utils/customAlertDialogTwoButtons.dart';
import '../utils/customButtomNavigationBar.dart';
import '../utils/customDrawer.dart';
import '../utils/extensions.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          Navigator.pushReplacementNamed(context, '/homeScreenPage');

        case 1:
          selectedIndex = 2;
          Navigator.pushNamed(context, '/qrCodeScanScreenPage');
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
          drawer: const CustomDrawer(),
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
                    width: 210,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/updateProfilePage');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                      child: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if(!user.hasSubscription)
                  SizedBox(
                    width: 210,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/subscriptionPage');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent, side: BorderSide.none, shape: const StadiumBorder()),
                      child: const Text('Try premium account ', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),

                  ProfileMenuWidget(
                    title: 'Artwork',
                    icon: LineAwesomeIcons.palette,
                    onPress: () {
                      Navigator.pushNamed(context, '/artworkDetailsPage');
                    },
                  ),
                  ProfileMenuWidget(
                    title: 'Subscription',
                    icon: Icons.payment,
                    onPress: () {},
                  ),
                  ProfileMenuWidget(title: 'Aplication Feedback', icon: Icons.feedback_outlined, onPress: () {}),
                  const Divider(),
                  const SizedBox(height: 10),
                  ProfileMenuWidget(title: 'Info', icon: LineAwesomeIcons.info, onPress: () {}),
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
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        );
      },
    );
  }
}
