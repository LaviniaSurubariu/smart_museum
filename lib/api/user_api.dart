import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/user/app_user/app_user.dart';

class AuthApi {
  const AuthApi({
    required FirebaseAuth auth,
    required FirebaseStorage storage,
    required FirebaseFirestore firestore,
  })  : _auth = auth,
        _storage = storage,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  final FirebaseFirestore _firestore;

  Future<AppUser> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<AppUser> changePicture(String path) async {
    final User user = _auth.currentUser!;

    final Reference ref = _storage.ref('users/${user.uid}/profile.png');
    await ref.putFile(File(path));
    final String url = await ref.getDownloadURL();

    await user.updatePhotoURL(url);
    await _firestore //
        .doc('users/${user.uid}')
        .update(<String, dynamic>{'pictureUrl': url});
    return _extractUser();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      return _extractUser();
    }
    return null;
  }

  Future<AppUser> createUser(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String role}) async {
    final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = userCredential.user!;

    final AppUser appUser = AppUser(
      uid: user.uid,
      email: email,
      firstName: firstName,
      lastName: lastName,
      creationTime: user.metadata.creationTime!,
      role: role,
      hasSubscription: false,
    );
    final Map<String, dynamic> appUserJson = appUser.toJson();
    appUserJson.remove('hasSubscription');

    final Timestamp now = Timestamp.now();
    appUserJson['startSubscriptionDate'] = now;
    appUserJson['endSubscriptionDate'] = now;

    await _firestore.doc('users/${user.uid}').set(appUserJson);

    return _extractUser();
  }

  Future<AppUser> _extractUser() async {
    final User user = _auth.currentUser!;
    final DocumentReference<Map<String, dynamic>> ref = _firestore.doc('users/${user.uid}');
    final DocumentSnapshot<Map<String, dynamic>> doc = await ref.get();
    AppUser appUser;
    if (doc.exists) {
      final Map<String, dynamic> data = doc.data()!;
      final DateTime now = DateTime.now();

      if ((data['startSubscriptionDate'] as Timestamp).toDate().isBefore(now) &&
          (data['endSubscriptionDate'] as Timestamp).toDate().isAfter(now)) {
        data.remove('startSubscriptionDate');
        data.remove('endSubscriptionDate');
        data['hasSubscription'] = true;
      } else {
        data.remove('startSubscriptionDate');
        data.remove('endSubscriptionDate');
        data['hasSubscription'] = false;
      }
      appUser = AppUser.fromJson(data);
    } else {
      final String email = user.email!;
      appUser = AppUser(
        uid: user.uid,
        email: email,
        firstName: doc.data()!['firstName'] as String,
        lastName: doc.data()!['lastName'] as String,
        creationTime: user.metadata.creationTime!,
        role: doc.data()!['role'] as String,
        pictureUrl: user.photoURL,
        hasSubscription: false,
      );
      final Map<String, dynamic> appUserJson = appUser.toJson();
      appUserJson.remove('hasSubscription');
      appUserJson['startSubscriptionDate'] = Timestamp.now();
      appUserJson['endSubscriptionDate'] = Timestamp.now();
      await ref.set(appUserJson);
    }
    return appUser;
  }

  Future<void> deleteUser() async {
    final User user = _auth.currentUser!;

    if (user.photoURL != null) {
      await _storage.ref('users/${user.uid}/profile.png').delete();
    }

    await _firestore.doc('users/${user.uid}').delete();

    await user.delete();
  }

  Future<void> changePassword(String newPassword) async {
    final User user = _auth.currentUser!;
    await user.updatePassword(newPassword);
  }

  Future<AppUser> changeName({required String newFirstName, required String newLastName}) async {
    final User user = _auth.currentUser!;

    await _firestore //
        .doc('users/${user.uid}')
        .update(<String, dynamic>{'firstName': newFirstName, 'lastName': newLastName});

    return _extractUser();
  }

// Future<List<AppUser>> getUsers(List<String> uids) async {
//   final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
//       .collection('users') //
//       .where('uid', whereIn: uids)
//       .get();
//
//   return snapshot.docs //
//       .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data()))
//       .toList();
// }
}
