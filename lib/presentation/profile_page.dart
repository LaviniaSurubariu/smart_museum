import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:smart_museum/presentation/utils/ProfileMenuWidget.dart';
import 'package:smart_museum/presentation/utils/customTheme.dart';

import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../models/user/app_user/app_user.dart';
import 'containers/app_user_container.dart';
import 'utils/extensions.dart';

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
              leading: IconButton(onPressed: () => {}, icon: const Icon(LineAwesomeIcons.angle_left)),
              title: const Text('Profile', style: TextStyle(color: Colors.black)),
            ),
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
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () async {
                              final ImagePicker picker = ImagePicker();
                              final XFile? file =
                                  await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

                              if (file != null) {
                                context.dispatch(ChangePicture(file.path));
                              }
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                              child: const Icon(
                                LineAwesomeIcons.alternate_pencil,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text('${user.firstName} ${user.lastName}',
                        style: const TextStyle(color: Colors.black, fontSize: 24)),
                    Text(user.email, style: const TextStyle(color: Colors.black, fontSize: 16)),
                    const SizedBox(height: 20),

                    /// -- BUTTON
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
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
                    ProfileMenuWidget(title: 'User Management', icon: LineAwesomeIcons.user_check, onPress: () {}),
                    const Divider(),
                    const SizedBox(height: 10),
                    ProfileMenuWidget(title: 'Information', icon: LineAwesomeIcons.info, onPress: () {}),
                    ProfileMenuWidget(
                      title: 'Logout',
                      icon: LineAwesomeIcons.alternate_sign_out,
                      textColor: Colors.red,
                      endIcon: false,
                      onPress: () {
                        context.dispatch(const SignOut());
                        Navigator.pushReplacementNamed(context, '/entryPage');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
