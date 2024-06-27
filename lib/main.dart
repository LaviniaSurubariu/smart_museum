import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'api/app_api.dart';
import 'epics/app_epics.dart';
import 'firebase_options.dart';
import 'models/app_state/app_state.dart';
import 'presentation/admin_pages/admin_home_screen.dart';
import 'presentation/admin_pages/generate_qr_code_page.dart';
import 'presentation/admin_pages/profile_admin_page.dart';
import 'presentation/create_user.dart';
import 'presentation/entry_page.dart';
import 'presentation/login_user.dart';
import 'presentation/update_profile.dart';
import 'presentation/user_pages/artwork_details_page.dart';
import 'presentation/user_pages/favorites_page.dart';
import 'presentation/user_pages/home_screen.dart';
import 'presentation/user_pages/payment_page.dart';
import 'presentation/user_pages/profile_page.dart';
import 'presentation/user_pages/qr_scan_page.dart';
import 'presentation/user_pages/subscription_page.dart';
import 'presentation/utils/customTheme.dart';
import 'reducer/reducer.dart';

Future<dynamic> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final AppApi authApi = AppApi(auth: auth, storage: storage, firestore: firestore);
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
  const MyApp({super.key, required this.store});
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
          '/qrCodeScanScreenPage': (BuildContext context) => const QrCodePage(),
          '/adminHomeScreenPage': (BuildContext context) => const AdminScreenPage(),
          '/profileAdminPage': (BuildContext context) => const ProfileAdminPage(),
          '/generateQrCodePage': (BuildContext context) => const GenerateQrCodePage(),
          '/artworkDetailsPage': (BuildContext context) => const ArtWorkDetailsPage(),
          '/subscriptionPage': (BuildContext context) => const SubscriptionPage(),
          '/paymentPage': (BuildContext context) => const PaymentPage(),
          '/favoritesPage': (BuildContext context) => const FavoritesPage(),
        },
      ),
    );
  }
}
