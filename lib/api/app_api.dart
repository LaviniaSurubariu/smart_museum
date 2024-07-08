import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/artist/artist.dart';
import '../models/artist_for_fetch/artist_for_fetch.dart';
import '../models/artwork/artwork.dart';
import '../models/artwork_by_style/artwork_by_style.dart';
import '../models/artwork_for_art_movements/artwork_for_art_movements.dart';
import '../models/artwork_for_top/artwork_for_top.dart';
import '../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../models/comment/comment.dart';
import '../models/favourite/favourite.dart';
import '../models/user/app_user/app_user.dart';

class AppApi {
  const AppApi({
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
      AppUser jsonUser;
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
      jsonUser = AppUser.fromJson(data);
      if (jsonUser.role == 'admin') {
        appUser = jsonUser.copyWith(hasSubscription: true);
      } else {
        appUser = jsonUser;
      }
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

    final QuerySnapshot<Map<String, dynamic>> commentsSnapshot =
        await _firestore.collection('comments').where('idUser', isEqualTo: user.uid).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in commentsSnapshot.docs) {
      await _firestore.doc('comments/${doc.id}').update(<String, dynamic>{
        'firstNameUser': newFirstName,
        'lastNameUser': newLastName,
      });
    }

    return _extractUser();
  }

  Future<AppUser> updateSubscriptionDates({required String duration}) async {
    final User user = _auth.currentUser!;
    final DocumentReference<Map<String, dynamic>> ref = _firestore.doc('users/${user.uid}');

    final DateTime now = DateTime.now();
    final DateTime endSubscriptionDate = now.add(_parseDuration(duration));

    await ref.update(
      <String, dynamic>{
        'startSubscriptionDate': Timestamp.fromDate(now),
        'endSubscriptionDate': Timestamp.fromDate(endSubscriptionDate),
      },
    );
    return _extractUser();
  }

  Duration _parseDuration(String duration) {
    final List<String> parts = duration.split(' ');
    final int number = int.parse(parts[0]);
    final String unit = parts[1];

    if (unit == 'day') {
      return Duration(days: number);
    } else if (unit == 'month') {
      return Duration(days: 30 * number);
    }
    return Duration.zero;
  }

  Future<void> addArtist({
    required String firstName,
    required String lastName,
    required String picturePath,
    required DateTime? birthdate,
    required DateTime? deathDate,
    required String description,
  }) async {
    final CollectionReference<Map<String, dynamic>> artistsCollection =
        FirebaseFirestore.instance.collection('artists');
    final DocumentReference<Map<String, dynamic>> newArtistRef = artistsCollection.doc();

    final Reference ref = _storage.ref('artists/${newArtistRef.id}/$firstName');
    await ref.putFile(File(picturePath));
    final String pictureUrl = await ref.getDownloadURL();

    final Artist artist = Artist(
      uid: newArtistRef.id,
      firstName: firstName,
      lastName: lastName,
      pictureUrl: pictureUrl,
      birthdate: birthdate,
      deathDate: deathDate,
      description: description,
    );

    final Map<String, dynamic> artistJson = artist.toJson();

    await newArtistRef.set(artistJson);
  }

  Future<void> addArtwork({
    required String title,
    required String artistFirstName,
    required String? artistLastName,
    required String artistUid,
    required int startCreationYear,
    required int endCreationYear,
    required String picturePath,
    required String audioPath,
    required String type,
    required String style,
    required String provenance,
    required String originalTitle,
    required String description,
  }) async {
    final CollectionReference<Map<String, dynamic>> artworksCollection =
        FirebaseFirestore.instance.collection('artworks');
    final DocumentReference<Map<String, dynamic>> newArtworkRef = artworksCollection.doc();

    final Reference pictureRef = _storage.ref('artworks/${newArtworkRef.id}/$title.jpg');
    await pictureRef.putFile(File(picturePath));
    final String pictureUrl = await pictureRef.getDownloadURL();

    final Reference audioRef = _storage.ref('artworks/${newArtworkRef.id}/$title.mp3');
    await audioRef.putFile(File(audioPath));
    final String audioUrl = await audioRef.getDownloadURL();

    final Artwork artwork = Artwork(
      uid: newArtworkRef.id,
      title: title,
      artistFirstName: artistFirstName,
      artistLastName: artistLastName,
      artistUid: artistUid,
      startCreationYear: startCreationYear,
      endCreationYear: endCreationYear,
      pictureUrl: pictureUrl,
      audioUrl: audioUrl,
      type: type,
      style: style,
      provenance: provenance,
      originalTitle: originalTitle,
      description: description,
      qrCodeUrl: null,
    );

    final Map<String, dynamic> artworkJson = artwork.toJson();

    await newArtworkRef.set(artworkJson);
  }

  Future<List<ArtworkWithoutQrCode>> fetchArtworksWithoutQRCode() async {
    try {
      final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
      final Query<Map<String, dynamic>> stateQuery = artworksRef.where('qrCodeUrl', isNull: true);

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await stateQuery.get();

      return querySnapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        return ArtworkWithoutQrCode(
          id: doc.id,
          title: doc.data()['title'] as String,
        );
      }).toList();
    } catch (e) {
      return <ArtworkWithoutQrCode>[];
    }
  }

  Future<Artwork> fetchArtwork({
    required String id,
  }) async {
    final DocumentReference<Map<String, dynamic>> artworkRef =
        FirebaseFirestore.instance.collection('artworks').doc(id);
    final DocumentSnapshot<Map<String, dynamic>> doc = await artworkRef.get();
    final Map<String, dynamic> data = doc.data()!;
    return Artwork.fromJson(data);
  }

  Future<Artist> fetchArtist({
    required String id,
  }) async {
    final DocumentReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists').doc(id);
    final DocumentSnapshot<Map<String, dynamic>> doc = await artistRef.get();
    final Map<String, dynamic> data = doc.data()!;
    return Artist.fromJson(data);
  }

  Future<bool> isArtworkFavourite({required String userId, required String artworkId}) async {
    final QuerySnapshot<Map<String, dynamic>> query = await FirebaseFirestore.instance
        .collection('favourites')
        .where('userId', isEqualTo: userId)
        .where('artworkId', isEqualTo: artworkId)
        .get();
    return query.docs.isNotEmpty;
  }

  Future<void> addFavourite({
    required String userId,
    required String artworkId,
    required String artworkTitle,
    required String artworkPictureUrl,
    required String artistName,
  }) async {
    final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection('favourites').doc();

    final Favourite favourite = Favourite(
      uid: docRef.id,
      userId: userId,
      artworkId: artworkId,
      artworkTitle: artworkTitle,
      artworkPictureUrl: artworkPictureUrl,
      artistName: artistName,
    );

    await docRef.set(favourite.toJson());
  }

  Future<void> removeFavourite({required String userId, required String artworkId}) async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore
        .collection('favourites')
        .where('userId', isEqualTo: userId)
        .where('artworkId', isEqualTo: artworkId)
        .get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in query.docs) {
      await doc.reference.delete();
    }
  }

  Future<List<Favourite>> getFavouritesForUser({required String userId}) async {
    final QuerySnapshot<Map<String, dynamic>> query =
        await _firestore.collection('favourites').where('userId', isEqualTo: userId).get();

    return query.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Favourite.fromJson(doc.data())).toList();
  }

  Future<List<Artwork>> getArtworks() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('artworks').get();

    return query.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Artwork.fromJson(doc.data())).toList();
  }

  Future<List<Artist>> getArtists() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('artists').get();

    return query.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Artist.fromJson(doc.data())).toList();
  }

  Future<List<Comment>> getComments() async {
    final QuerySnapshot<Map<String, dynamic>> query =
        await _firestore.collection('comments').orderBy('createdAt', descending: true).get();

    return query.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Comment.fromJson(doc.data())).toList();
  }

  Future<void> addComment({
    required String text,
    required DateTime createdAt,
    required String idUser,
    required String firstNameUser,
    required String lastNameUser,
  }) async {
    final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection('comments').doc();

    final Comment comment = Comment(
      uid: docRef.id,
      text: text,
      createdAt: createdAt,
      idUser: idUser,
      firstNameUser: firstNameUser,
      lastNameUser: lastNameUser,
    );

    await docRef.set(comment.toJson());
  }

  Future<String> updateArtworkImage(
      {required String newPicturePath,
      required String artworkId,
      required String artworkTitle,
      required String oldPictureUrl}) async {
    if (oldPictureUrl.isNotEmpty) {
      final Reference storageRef = FirebaseStorage.instance.refFromURL(oldPictureUrl);
      await storageRef.delete();
    }

    final Reference pictureRef = _storage.ref().child('artworks/$artworkId/$artworkTitle.jpg');
    await pictureRef.putFile(File(newPicturePath));

    final String newPictureUrl = await pictureRef.getDownloadURL();

    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'pictureUrl': newPictureUrl});

    final QuerySnapshot<Map<String, dynamic>> favouritesSnapshot =
        await _firestore.collection('favourites').where('artworkId', isEqualTo: artworkId).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in favouritesSnapshot.docs) {
      await _firestore.doc('favourites/${doc.id}').update(<String, dynamic>{
        'artworkPictureUrl': newPictureUrl,
      });
    }

    return newPictureUrl;
  }

  Future<String> updateArtworkAudio(
      {required String newAudioPath,
      required String artworkId,
      required String artworkTitle,
      required String oldAudioUrl}) async {
    if (oldAudioUrl.isNotEmpty) {
      final Reference storageRef = FirebaseStorage.instance.refFromURL(oldAudioUrl);
      await storageRef.delete();
    }

    final Reference audioRef = _storage.ref('artworks/$artworkId/$artworkTitle.mp3');
    await audioRef.putFile(File(newAudioPath));
    final String newAudioUrl = await audioRef.getDownloadURL();

    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'audioUrl': newAudioUrl});
    return newAudioUrl;
  }

  Future<ArtistForFetch> updateArtworkArtist({required ArtistForFetch artist, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{
      'artistFirstName': artist.firstName,
      'artistLastName': artist.lastName,
      'artistUid': artist.uid
    });

    final QuerySnapshot<Map<String, dynamic>> favouritesSnapshot =
        await _firestore.collection('favourites').where('artworkId', isEqualTo: artworkId).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in favouritesSnapshot.docs) {
      await _firestore.doc('favourites/${doc.id}').update(<String, dynamic>{
        'artistName': '${artist.firstName} ${artist.lastName}',
      });
    }

    return artist;
  }

  Future<String> updateArtworkTitle({required String newTitle, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'title': newTitle});

    final QuerySnapshot<Map<String, dynamic>> favouritesSnapshot =
        await _firestore.collection('favourites').where('artworkId', isEqualTo: artworkId).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in favouritesSnapshot.docs) {
      await _firestore.doc('favourites/${doc.id}').update(<String, dynamic>{
        'artworkTitle': newTitle,
      });
    }

    return newTitle;
  }

  Future<int> updateArtworkStartCreationYear({required int newYear, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'startCreationYear': newYear});
    return newYear;
  }

  Future<int> updateArtworkEndCreationYear({required int newYear, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'endCreationYear': newYear});
    return newYear;
  }

  Future<String> updateArtworkType({required String newType, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'type': newType});
    return newType;
  }

  Future<String> updateArtworkStyle({required String newStyle, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'style': newStyle});
    return newStyle;
  }

  Future<String> updateArtworkProvenance({required String newProvenance, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'provenance': newProvenance});
    return newProvenance;
  }

  Future<String> updateArtworkDescription({required String newDescription, required String artworkId}) async {
    final CollectionReference<Map<String, dynamic>> artworksRef = FirebaseFirestore.instance.collection('artworks');
    await artworksRef.doc(artworkId).update(<Object, Object?>{'description': newDescription});
    return newDescription;
  }

  Future<String> updateArtistImage(
      {required String newPicturePath,
      required String artistId,
      required String artistFirstName,
      required String oldPictureUrl}) async {
    if (oldPictureUrl.isNotEmpty) {
      final Reference storageRef = FirebaseStorage.instance.refFromURL(oldPictureUrl);
      await storageRef.delete();
    }

    final Reference pictureRef = _storage.ref().child('artists/$artistId/$artistFirstName');
    await pictureRef.putFile(File(newPicturePath));

    final String newPictureUrl = await pictureRef.getDownloadURL();

    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    await artistRef.doc(artistId).update(<Object, Object?>{'pictureUrl': newPictureUrl});
    return newPictureUrl;
  }

  Future<String> updateArtistFirstName({required String newFirstName, required String artistId}) async {
    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    await artistRef.doc(artistId).update(<Object, Object?>{'firstName': newFirstName});

    final QuerySnapshot<Map<String, dynamic>> artworksSnapshot =
        await _firestore.collection('artworks').where('artistUid', isEqualTo: artistId).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in artworksSnapshot.docs) {
      await _firestore.doc('artworks/${doc.id}').update(<String, dynamic>{
        'artistFirstName': newFirstName,
      });
    }
    return newFirstName;
  }

  Future<String> updateArtistLastName({required String newLastName, required String artistId}) async {
    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    await artistRef.doc(artistId).update(<Object, Object?>{'lastName': newLastName});
    final QuerySnapshot<Map<String, dynamic>> artworksSnapshot =
        await _firestore.collection('artworks').where('artistUid', isEqualTo: artistId).get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in artworksSnapshot.docs) {
      await _firestore.doc('artworks/${doc.id}').update(<String, dynamic>{
        'artistLastName': newLastName,
      });
    }
    return newLastName;
  }

  Future<DateTime?> updateArtistBirthdate({required DateTime? newBirthdate, required String artistId}) async {
    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    final String? birthdateString = newBirthdate?.toIso8601String();
    await artistRef.doc(artistId).update(<Object, Object?>{'birthdate': birthdateString});
    return newBirthdate;
  }

  Future<DateTime?> updateArtistDeathDate({required DateTime? newDeathDate, required String artistId}) async {
    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    final String? deathDateString = newDeathDate?.toIso8601String();
    await artistRef.doc(artistId).update(<Object, Object?>{'deathDate': deathDateString});
    return newDeathDate;
  }

  Future<String> updateArtistDescription({required String newDescription, required String artistId}) async {
    final CollectionReference<Map<String, dynamic>> artistRef = FirebaseFirestore.instance.collection('artists');
    await artistRef.doc(artistId).update(<Object, Object?>{'description': newDescription});
    return newDescription;
  }

  Future<List<ArtworkForArtMovements>> getTopUniqueStylesFromArtworks() async {
    final CollectionReference<Map<String, dynamic>> artworksCollection =
        FirebaseFirestore.instance.collection('artworks');

    final QuerySnapshot<Map<String, dynamic>> snapshot = await artworksCollection.get();

    final Map<String, ArtworkForArtMovements> uniqueStylesMap = <String, ArtworkForArtMovements>{};

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      final Map<String, dynamic> data = doc.data();
      final ArtworkForArtMovements artwork = ArtworkForArtMovements(
        uid: doc.id,
        pictureUrl: data['pictureUrl'] as String,
        style: data['style'] as String,
      );

      if (!uniqueStylesMap.containsKey(artwork.style)) {
        uniqueStylesMap[artwork.style] = artwork;
        if (uniqueStylesMap.length == 5) {
          break;
        }
      }
    }

    return uniqueStylesMap.values.toList();
  }

  Future<List<Artist>> getTopArtists() async {
    final CollectionReference<Map<String, dynamic>> artistsCollection =
        FirebaseFirestore.instance.collection('artists');

    final QuerySnapshot<Map<String, dynamic>> snapshot = await artistsCollection.limit(5).get();

    final List<Artist> artistsList = snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
      return Artist.fromJson(doc.data());
    }).toList();

    return artistsList;
  }

  Future<List<ArtworkForTop>> getTopArtworks() async {
    final CollectionReference<Map<String, dynamic>> artworksCollection =
        FirebaseFirestore.instance.collection('artworks');

    final QuerySnapshot<Map<String, dynamic>> snapshot = await artworksCollection.limit(5).get();

    final List<ArtworkForTop> topArtworksList = snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
      return ArtworkForTop.fromJson(doc.data());
    }).toList();

    return topArtworksList;
  }

  Future<List<ArtworkForArtMovements>> getUniqueStylesFromArtworks() async {
    final CollectionReference<Map<String, dynamic>> artworksCollection =
        FirebaseFirestore.instance.collection('artworks');

    final QuerySnapshot<Map<String, dynamic>> snapshot = await artworksCollection.get();

    final Map<String, ArtworkForArtMovements> uniqueStylesMap = <String, ArtworkForArtMovements>{};

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      final Map<String, dynamic> data = doc.data();
      final ArtworkForArtMovements artwork = ArtworkForArtMovements(
        uid: doc.id,
        pictureUrl: data['pictureUrl'] as String,
        style: data['style'] as String,
      );

      if (!uniqueStylesMap.containsKey(artwork.style)) {
        uniqueStylesMap[artwork.style] = artwork;
        if (uniqueStylesMap.length == 5) {
          break;
        }
      }
    }

    return uniqueStylesMap.values.toList();
  }

  Future<List<ArtworkByStyle>> getArtworksByStyle({required String style}) async {
    final QuerySnapshot<Map<String, dynamic>> query =
        await _firestore.collection('artworks').where('style', isEqualTo: style).get();

    return query.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => ArtworkByStyle.fromJson(doc.data()))
        .toList();
  }

  Future<int> getNumberOfRegisteredUsers() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('users').get();
    return query.docs.length;
  }

  Future<int> getNumberOfAddedArtworks() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('artworks').get();
    return query.docs.length;
  }

  Future<int> getNumberOfAddedArtists() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('artists').get();
    return query.docs.length;
  }

  Future<int> getNumberOfFavouritesArtworks() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('favourites').get();
    return query.docs.length;
  }

  Future<int> getNumberOfMessages() async {
    final QuerySnapshot<Map<String, dynamic>> query = await _firestore.collection('comments').get();
    return query.docs.length;
  }

  Future<DateTime> getUserStartSubscriptionDate({required String userId}) async {
    final QuerySnapshot<Map<String, dynamic>> query =
        await FirebaseFirestore.instance.collection('users').where('uid', isEqualTo: userId).get();
    if (query.docs.isNotEmpty) {
      final DocumentSnapshot<Map<String, dynamic>> doc = query.docs.first;
      final Map<String, dynamic>? data = doc.data();
      if (data != null && data.containsKey('startSubscriptionDate')) {
        final Timestamp timestamp = data['startSubscriptionDate'] as Timestamp;
        return timestamp.toDate();
      }
    }
    return DateTime.now();
  }

  Future<DateTime> getUserEndSubscriptionDate({required String userId}) async {
    final QuerySnapshot<Map<String, dynamic>> query =
        await FirebaseFirestore.instance.collection('users').where('uid', isEqualTo: userId).get();

    if (query.docs.isNotEmpty) {
      final DocumentSnapshot<Map<String, dynamic>> doc = query.docs.first;
      final Map<String, dynamic>? data = doc.data();
      if (data != null && data.containsKey('endSubscriptionDate')) {
        final Timestamp timestamp = data['endSubscriptionDate'] as Timestamp;
        return timestamp.toDate();
      }
    }
    return DateTime.now();
  }
}
