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
import 'presentation/admin_pages/add_artist_page.dart';
import 'presentation/admin_pages/add_artwork_page.dart';
import 'presentation/admin_pages/admin_home_screen.dart';
import 'presentation/admin_pages/admin_info_page.dart';
import 'presentation/admin_pages/artist_edit_page.dart';
import 'presentation/admin_pages/artists_list_admin_page.dart';
import 'presentation/admin_pages/artwork_edit_page.dart';
import 'presentation/admin_pages/artworks_list_admin_page.dart';
import 'presentation/admin_pages/generate_qr_code_page.dart';
import 'presentation/admin_pages/list_of_artworks_without_qr_code_page.dart';
import 'presentation/admin_pages/profile_admin_page.dart';
import 'presentation/create_user.dart';
import 'presentation/entry_page.dart';
import 'presentation/forum_page.dart';
import 'presentation/login_user.dart';
import 'presentation/update_profile.dart';
import 'presentation/user_pages/app_feedback_page.dart';
import 'presentation/user_pages/artist_details_page.dart';
import 'presentation/user_pages/artists_page.dart';
import 'presentation/user_pages/artwork_details_page.dart';
import 'presentation/user_pages/artworks_by_style_page.dart';
import 'presentation/user_pages/artworks_page.dart';
import 'presentation/user_pages/artworks_with_all_styles_page.dart';
import 'presentation/user_pages/favourites_page.dart';
import 'presentation/user_pages/home_screen.dart';
import 'presentation/user_pages/info_subscription_page.dart';
import 'presentation/user_pages/payment_page.dart';
import 'presentation/user_pages/profile_page.dart';
import 'presentation/user_pages/qr_scan_page.dart';
import 'presentation/user_pages/subscription_page.dart';
import 'presentation/user_pages/user_info_page.dart';
import 'presentation/utils/custom_theme.dart';
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
          '/favouritesPage': (BuildContext context) => const FavouritesPage(),
          '/addArtistPage': (BuildContext context) => const AddArtistPage(),
          '/addArtworkPage': (BuildContext context) => const AddArtworkPage(),
          '/artworksWithoutQRCodePage': (BuildContext context) => const ArtworksWithoutQRCodePage(),
          '/artistDetailsPage': (BuildContext context) => const ArtistDetailsPage(),
          '/artworksPage': (BuildContext context) => const ArtworksPage(),
          '/artistsPage': (BuildContext context) => const ArtistsPage(),
          '/forumPage': (BuildContext context) => const ForumPage(),
          '/artworksListAdminPage': (BuildContext context) => const ArtworksListAdminPage(),
          '/artworkEditPage': (BuildContext context) => const ArtworkEditPage(),
          '/artistsListAdminPage': (BuildContext context) => const ArtistsListAdminPage(),
          '/artistEditPage': (BuildContext context) => const ArtistEditPage(),
          '/artworksWithAllStylePage': (BuildContext context) => const ArtworksWithAllStylesPage(),
          '/artworksByStylePage': (BuildContext context) => const ArtworksByStylePage(),
          '/adminInfoPage': (BuildContext context) => const AdminInfoPage(),
          '/appFeedbackPage': (BuildContext context) => const AppFeedbackPage(),
          '/userInfoPage': (BuildContext context) => const UserInfoPage(),
          '/infoSubscriptionPage': (BuildContext context) => const InfoSubscriptionPage(),
        },
      ),
    );
  }
}
