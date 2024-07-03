import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../actions/set/set.dart';
import '../actions/user_s_actions/add_favourite/add_favourite.dart';
import '../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/remove_favourite/remove_favourite.dart';
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
    TypedReducer<AppState, FetchScannedArtworkSuccessful>(_fetchScannedArtwork).call,
    TypedReducer<AppState, SetSelectedArtwork>(_setSelectedArtwork).call,
    TypedReducer<AppState, FetchSelectedArtistSuccessful>(_fetchSelectedArtist).call,
    TypedReducer<AppState, IsArtworkFavouriteSuccessful>(_isArtworkFavouriteSuccessful).call,
    TypedReducer<AppState, AddFavouriteSuccessful>(_addFavouriteSuccessful).call,
    TypedReducer<AppState, RemoveFavouriteSuccessful>(_removeFavouriteSuccessful).call,
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
    artworksWithoutQrCode: <ArtworkWithoutQrCode>[...action.artworksWithoutQrCode],
  );
}

AppState _setSelectedArtworkWithoutQrCode(AppState state, SetSelectedArtworkWithoutQrCode action) {
  return state.copyWith(selectedArtworkWithoutQrCode: action.artworkWithoutQrCode);
}

AppState _fetchScannedArtwork(AppState state, FetchScannedArtworkSuccessful action) {
  return state.copyWith(scannedArtwork: action.scannedArtwork);
}

AppState _setSelectedArtwork(AppState state, SetSelectedArtwork action) {
  return state.copyWith(selectedArtwork: action.selectedArtwork);
}

AppState _fetchSelectedArtist(AppState state, FetchSelectedArtistSuccessful action) {
  return state.copyWith(selectedArtist: action.selectedArtist);
}

AppState _isArtworkFavouriteSuccessful(AppState state, IsArtworkFavouriteSuccessful action) {
  return state.copyWith(isFavourite: action.isFavourite);
}

AppState _addFavouriteSuccessful(AppState state, AddFavouriteSuccessful action) {
  return state.copyWith(isFavourite: true);
}

AppState _removeFavouriteSuccessful(AppState state, RemoveFavouriteSuccessful action) {
  return state.copyWith(isFavourite: false);
}
