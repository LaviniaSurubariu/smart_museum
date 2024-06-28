import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/admin_actions/add_artist/add_artist.dart';
import '../actions/admin_actions/add_artwork/add_artwork.dart';
import '../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../actions/app_action.dart';
import '../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_password/change_password.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../api/app_api.dart';
import '../models/app_state/app_state.dart';
import '../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../models/user/app_user/app_user.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.appApi);

  final AppApi appApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, ChangePictureStart>(_changePictureStart).call,
      TypedEpic<AppState, DeleteUserStart>(_deleteUserStart).call,
      TypedEpic<AppState, ChangePasswordStart>(_changePasswordStart).call,
      TypedEpic<AppState, ChangeNameStart>(_changeNameStart).call,
      TypedEpic<AppState, BuySubscriptionStart>(_buySubscriptionStart).call,
      TypedEpic<AppState, AddArtistStart>(_addArtistStart).call,
      TypedEpic<AppState, AddArtworkStart>(_addArtworkStart).call,
      TypedEpic<AppState, GetListArtworksWithoutQrCodeStart>(_getListArtworksWithoutQrCodeStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.createUser(
              email: action.email,
              password: action.password,
              firstName: action.firstName,
              lastName: action.lastName,
              role: action.role))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _signOutStart(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.signOut())
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _changePictureStart(Stream<ChangePictureStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.changePicture(action.path))
          .map((AppUser user) => ChangePicture.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePicture.error(error, stackTrace));
    });
  }

  Stream<AppAction> _deleteUserStart(Stream<DeleteUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.deleteUser())
          .map((_) => const DeleteUser.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => DeleteUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _changePasswordStart(Stream<ChangePasswordStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangePasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.changePassword(action.newPass))
          .map((_) => const ChangePassword.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePassword.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _changeNameStart(Stream<ChangeNameStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangeNameStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.changeName(newFirstName: action.newFirstName, newLastName: action.newLastName))
          .map((AppUser user) => ChangeName.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangeName.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _buySubscriptionStart(Stream<BuySubscriptionStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((BuySubscriptionStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateSubscriptionDates(duration: action.duration))
          .map((AppUser user) => BuySubscription.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => BuySubscription.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _addArtistStart(Stream<AddArtistStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddArtistStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.addArtist(
              firstName: action.firstName,
              lastName: action.lastName,
              picturePath: action.picturePath,
              birthdate: action.birthdate,
              deathDate: action.deathDate,
              description: action.description))
          .map((_) => const AddArtist.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddArtist.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _addArtworkStart(Stream<AddArtworkStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddArtworkStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.addArtwork(
              title: action.title,
              artistFirstName: action.artistFirstName,
              artistLastName: action.artistLastName,
              artistUid: action.artistUid,
              startCreationYear: action.startCreationYear,
              endCreationYear: action.endCreationYear,
              picturePath: action.picturePath,
              audioPath: action.audioPath,
              type: action.type,
              style: action.style,
              provenance: action.provenance,
              originalTitle: action.originalTitle,
              description: action.description))
          .map((_) => const AddArtwork.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddArtwork.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getListArtworksWithoutQrCodeStart(
      Stream<GetListArtworksWithoutQrCodeStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetListArtworksWithoutQrCodeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.fetchArtworksWithoutQRCode();
          })
          .map((List<ArtworkWithoutQrCode> artworksWithoutQrCode) =>
              GetListArtworksWithoutQrCode.successful(artworksWithoutQrCode))
          .onErrorReturnWith(
              (Object error, StackTrace stackTrace) => GetListArtworksWithoutQrCode.error(error, stackTrace))
          .doOnData(action.result);
    });
  }
}
