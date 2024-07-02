import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../actions/set/set.dart';
import '../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../models/app_state/app_state.dart';
import '../models/artwork_without_qrCode/artwork_without_qr_code.dart';

AppState reducer(AppState state, dynamic action) {
  log('$action');

  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, LoginSuccessful>(_loginSuccessful).call,
    TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
    TypedReducer<AppState, ChangePictureSuccessful>(_changePictureSuccessful).call,
    TypedReducer<AppState, DeleteUserSuccessful>(_deleteUserSuccessful).call,
    TypedReducer<AppState, ChangeNameSuccessful>(_changeNameSuccessful).call,
    TypedReducer<AppState, BuySubscriptionSuccessful>(_buySubscriptionSuccessful).call,
    TypedReducer<AppState, GetListArtworksWithoutQrCodeSuccessful>(_getListArtworksWithoutQrCodeSuccessful).call,
    TypedReducer<AppState, SetSelectedArtworkWithoutQrCode>(_setSelectedArtworkWithoutQrCode).call,
  ])(state, action);
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _changePictureSuccessful(AppState state, ChangePictureSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _deleteUserSuccessful(AppState state, DeleteUserSuccessful action) {
  return state.copyWith(user: null);
}

AppState _changeNameSuccessful(AppState state, ChangeNameSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _buySubscriptionSuccessful(AppState state, BuySubscriptionSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getListArtworksWithoutQrCodeSuccessful(AppState state, GetListArtworksWithoutQrCodeSuccessful action) {
  return state.copyWith(
    artworksWithoutQrCode: <ArtworkWithoutQrCode> [...action.artworksWithoutQrCode],
  );
}
AppState _setSelectedArtworkWithoutQrCode(AppState state, SetSelectedArtworkWithoutQrCode action) {
  return state.copyWith(selectedArtworkWithoutQrCode: action.artworkWithoutQrCode);
}
