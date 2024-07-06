import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/admin_actions/get_list_artworks_without_qr_code/get_list_artworks_without_qr_code.dart';
import '../actions/admin_actions/update_artist_birthdate/update_artist_birthdate.dart';
import '../actions/admin_actions/update_artist_death_date/update_artist_death_date.dart';
import '../actions/admin_actions/update_artist_description/update_artist_description.dart';
import '../actions/admin_actions/update_artist_first_name/update_artist_first_name.dart';
import '../actions/admin_actions/update_artist_image/update_artist_image.dart';
import '../actions/admin_actions/update_artist_last_name/update_artist_last_name.dart';
import '../actions/admin_actions/update_artwork_artist/update_artwork_artist.dart';
import '../actions/admin_actions/update_artwork_audio/update_artwork_audio.dart';
import '../actions/admin_actions/update_artwork_description/update_artwork_description.dart';
import '../actions/admin_actions/update_artwork_end_creation_year/update_artwork_end_creation_year.dart';
import '../actions/admin_actions/update_artwork_image/update_artwork_image.dart';
import '../actions/admin_actions/update_artwork_provenance/update_artwork_provenance.dart';
import '../actions/admin_actions/update_artwork_start_creation_year/update_artwork_start_creation_year.dart';
import '../actions/admin_actions/update_artwork_style/update_artwork_style.dart';
import '../actions/admin_actions/update_artwork_title/update_artwork_title.dart';
import '../actions/admin_actions/update_artwork_type/update_artwork_type.dart';
import '../actions/get_artists/get_artists.dart';
import '../actions/get_artworks/get_artworks.dart';
import '../actions/get_comments/get_comments.dart';
import '../actions/set/set.dart';
import '../actions/user_s_actions/add_favourite/add_favourite.dart';
import '../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../actions/user_s_actions/get_favourites/get_favourites.dart';
import '../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/remove_favourite/remove_favourite.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../models/app_state/app_state.dart';
import '../models/artist/artist.dart';
import '../models/artwork/artwork.dart';
import '../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../models/comment/comment.dart';
import '../models/favourite/favourite.dart';

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
    TypedReducer<AppState, FetchScannedArtworkStart>(_fetchScannedArtworkStart).call,
    TypedReducer<AppState, SetSelectedArtwork>(_setSelectedArtwork).call,
    TypedReducer<AppState, FetchSelectedArtistSuccessful>(_fetchSelectedArtist).call,
    TypedReducer<AppState, IsArtworkFavouriteSuccessful>(_isArtworkFavouriteSuccessful).call,
    TypedReducer<AppState, AddFavouriteSuccessful>(_addFavouriteSuccessful).call,
    TypedReducer<AppState, RemoveFavouriteSuccessful>(_removeFavouriteSuccessful).call,
    TypedReducer<AppState, GetFavouritesSuccessful>(_getFavouritesSuccessful).call,
    TypedReducer<AppState, SetRouteArtworkIndex>(_setRouteArtworkIndex).call,
    TypedReducer<AppState, SetRouteArtistIndex>(_setRouteArtistIndex).call,
    TypedReducer<AppState, GetArtworksSuccessful>(_getArtworksSuccessful).call,
    TypedReducer<AppState, GetArtistsSuccessful>(_getArtistsSuccessful).call,
    TypedReducer<AppState, GetCommentsSuccessful>(_getCommentsSuccessful).call,
    TypedReducer<AppState, UpdateArtworkImageStart>(_updateArtworkImageStart).call,
    TypedReducer<AppState, UpdateArtworkImageSuccessful>(_updateArtworkImageSuccessful).call,
    TypedReducer<AppState, UpdateArtworkAudioSuccessful>(_updateArtworkAudioSuccessful).call,
    TypedReducer<AppState, UpdateArtworkArtistSuccessful>(_updateArtworkArtistSuccessful).call,
    TypedReducer<AppState, UpdateArtworkTitleSuccessful>(_updateArtworkTitleSuccessful).call,
    TypedReducer<AppState, UpdateArtworkStartCreationYearSuccessful>(_updateArtworkStartCreationYearSuccessful).call,
    TypedReducer<AppState, UpdateArtworkEndCreationYearSuccessful>(_updateArtworkEndCreationYearSuccessful).call,
    TypedReducer<AppState, UpdateArtworkTypeSuccessful>(_updateArtworkTypeSuccessful).call,
    TypedReducer<AppState, UpdateArtworkStyleSuccessful>(_updateArtworkStyleSuccessful).call,
    TypedReducer<AppState, UpdateArtworkProvenanceSuccessful>(_updateArtworkProvenanceSuccessful).call,
    TypedReducer<AppState, UpdateArtworkDescriptionSuccessful>(_updateArtworkDescriptionSuccessful).call,
    TypedReducer<AppState, UpdateArtistImageStart>(_updateArtistImageStart).call,
    TypedReducer<AppState, UpdateArtistImageSuccessful>(_updateArtistImageSuccessful).call,
    TypedReducer<AppState, UpdateArtistFirstNameSuccessful>(_updateArtistFirstNameSuccessful).call,
    TypedReducer<AppState, UpdateArtistLastNameSuccessful>(_updateArtistLastNameSuccessful).call,
    TypedReducer<AppState, UpdateArtistBirthdateSuccessful>(_updateArtistBirthdateSuccessful).call,
    TypedReducer<AppState, UpdateArtistDeathDateSuccessful>(_updateArtistDeathDateSuccessful).call,
    TypedReducer<AppState, UpdateArtistDescriptionSuccessful>(_updateArtistDescriptionSuccessful).call,
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
  return state.copyWith(
    scannedArtwork: action.scannedArtwork,
    selectedArtwork: action.scannedArtwork,
  );
}AppState _fetchScannedArtworkStart(AppState state, FetchScannedArtworkStart action) {
  return state.copyWith(
    selectedArtwork: null,
  );
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

AppState _getFavouritesSuccessful(AppState state, GetFavouritesSuccessful action) {
  return state.copyWith(
    favourites: <Favourite>[...action.favourites],
  );
}

AppState _setRouteArtworkIndex(AppState state, SetRouteArtworkIndex action) {
  return state.copyWith(routeArtworkIndex: action.routeArtworkIndex);
}

AppState _setRouteArtistIndex(AppState state, SetRouteArtistIndex action) {
  return state.copyWith(routeArtistIndex: action.routeArtistIndex);
}

AppState _getArtworksSuccessful(AppState state, GetArtworksSuccessful action) {
  return state.copyWith(
    artworks: <Artwork>[...action.artworks],
  );
}

AppState _getArtistsSuccessful(AppState state, GetArtistsSuccessful action) {
  return state.copyWith(
    artists: <Artist>[...action.artists],
  );
}

AppState _getCommentsSuccessful(AppState state, GetCommentsSuccessful action) {
  return state.copyWith(
    comments: <Comment>[...action.comments],
  );
}

AppState _updateArtworkImageSuccessful(AppState state, UpdateArtworkImageSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(pictureUrl: action.newPicturePath),
  );
}

AppState _updateArtworkImageStart(AppState state, UpdateArtworkImageStart action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(pictureUrl: ''),
  );
}

AppState _updateArtworkAudioSuccessful(AppState state, UpdateArtworkAudioSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(audioUrl: action.newAudioPath),
  );
}

AppState _updateArtworkArtistSuccessful(AppState state, UpdateArtworkArtistSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
        artistFirstName: action.artist.firstName, artistLastName: action.artist.lastName, artistUid: action.artist.uid),
  );
}

AppState _updateArtworkTitleSuccessful(AppState state, UpdateArtworkTitleSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      title: action.newTitle,
    ),
  );
}

AppState _updateArtworkStartCreationYearSuccessful(AppState state, UpdateArtworkStartCreationYearSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      startCreationYear: action.newStartCreationYear,
    ),
  );
}

AppState _updateArtworkEndCreationYearSuccessful(AppState state, UpdateArtworkEndCreationYearSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      endCreationYear: action.newEndCreationYear,
    ),
  );
}

AppState _updateArtworkTypeSuccessful(AppState state, UpdateArtworkTypeSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      type: action.newType,
    ),
  );
}

AppState _updateArtworkStyleSuccessful(AppState state, UpdateArtworkStyleSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      style: action.newStyle,
    ),
  );
}

AppState _updateArtworkProvenanceSuccessful(AppState state, UpdateArtworkProvenanceSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      provenance: action.newProvenance,
    ),
  );
}

AppState _updateArtworkDescriptionSuccessful(AppState state, UpdateArtworkDescriptionSuccessful action) {
  return state.copyWith(
    selectedArtwork: state.selectedArtwork?.copyWith(
      description: action.newDescription,
    ),
  );
}

AppState _updateArtistImageSuccessful(AppState state, UpdateArtistImageSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(pictureUrl: action.newPictureUrl),
  );
}

AppState _updateArtistImageStart(AppState state, UpdateArtistImageStart action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(pictureUrl: ''),
  );
}

AppState _updateArtistFirstNameSuccessful(AppState state, UpdateArtistFirstNameSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(
      firstName: action.newFirstName,
    ),
  );
}

AppState _updateArtistLastNameSuccessful(AppState state, UpdateArtistLastNameSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(
      lastName: action.newLastName,
    ),
  );
}

AppState _updateArtistBirthdateSuccessful(AppState state, UpdateArtistBirthdateSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(
      birthdate: action.newBirthdate,
    ),
  );
}

AppState _updateArtistDeathDateSuccessful(AppState state, UpdateArtistDeathDateSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(
      deathDate: action.newDeathDate,
    ),
  );
}

AppState _updateArtistDescriptionSuccessful(AppState state, UpdateArtistDescriptionSuccessful action) {
  return state.copyWith(
    selectedArtist: state.selectedArtist?.copyWith(
      description: action.newDescription,
    ),
  );
}
