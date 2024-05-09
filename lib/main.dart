import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:smart_museum/presentation/utils/customTheme.dart';

import 'api/auth_api.dart';
import 'epics/app_epics.dart';
import 'firebase_options.dart';
import 'models/app_state/app_state.dart';
import 'presentation/create_user.dart';
import 'presentation/entry_page.dart';
import 'presentation/home_screen.dart';
import 'presentation/login_user.dart';
import 'presentation/profile_page.dart';
import 'presentation/update_profile.dart';
import 'reducer/reducer.dart';

Future<dynamic> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final AuthApi authApi = AuthApi(auth: auth, storage: storage, firestore: firestore);
  final AppEpics appEpic = AppEpics(authApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.store});
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: CustomTheme.themeData,
        home: const EntryPage(),
        routes: <String, WidgetBuilder>{
          '/entryPage': (BuildContext context) => const EntryPage(),
          '/createUser': (BuildContext context) => const CreateUserPage(),
          '/loginUser': (BuildContext context) => const LoginUserPage(),
          '/profilePage': (BuildContext context) => const ProfilePage(),
          '/updateProfilePage': (BuildContext context) => const UpdateProfilePage(),
          '/homeScreenPage': (BuildContext context) => const HomeScreenPage(),
        },
      ),

    );
  }
}
