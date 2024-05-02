import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/app_action.dart';
import '../actions/user_s_actions/change_password/change_password.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../api/auth_api.dart';
import '../models/app_state/app_state.dart';
import '../models/user/app_user/app_user.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.authApi);

  final AuthApi authApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, ChangePictureStart>(_changePictureStart).call,
      TypedEpic<AppState, DeleteUserStart>(_deleteUserStart).call,
      TypedEpic<AppState, ChangePasswordStart>(_changePasswordStart).call,

    ])(actions, store);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.createUser(
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
          .asyncMap((_) => authApi.signOut())
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _changePictureStart(Stream<ChangePictureStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.changePicture(action.path))
          .map((AppUser user) => ChangePicture.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePicture.error(error, stackTrace));
    });
  }

  Stream<AppAction> _deleteUserStart(Stream<DeleteUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.deleteUser())
          .map((_) => const DeleteUser.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => DeleteUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _changePasswordStart(Stream<ChangePasswordStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ChangePasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.changePassword(action.newPass))
          .map((_) => const ChangePassword.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangePassword.error(error, stackTrace));
    });
  }
}
