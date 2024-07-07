import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/add_comment/add_comment.dart';
import '../actions/admin_actions/add_artist/add_artist.dart';
import '../actions/admin_actions/add_artwork/add_artwork.dart';
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
import '../actions/app_action.dart';
import '../actions/get_artists/get_artists.dart';
import '../actions/get_artworks/get_artworks.dart';
import '../actions/get_comments/get_comments.dart';
import '../actions/get_top_artists/get_top_artists.dart';
import '../actions/get_top_artworks/get_top_artworks.dart';
import '../actions/user_s_actions/add_favourite/add_favourite.dart';
import '../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_password/change_password.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../actions/user_s_actions/fetch_scanned_artwork/fetch_scanned_artwork.dart';
import '../actions/user_s_actions/fetch_selected_artist/fetch_selected_artist.dart';
import '../actions/user_s_actions/get_all_styles/get_all_styles.dart';
import '../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../actions/user_s_actions/get_by_style/get_by_style.dart';
import '../actions/user_s_actions/get_favourites/get_favourites.dart';
import '../actions/user_s_actions/is_artwork_favourite/is_artwork_favourite.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import '../actions/user_s_actions/login&create/login.dart';
import '../actions/user_s_actions/remove_favourite/remove_favourite.dart';
import '../actions/user_s_actions/signout/sign_out.dart';
import '../api/app_api.dart';
import '../models/app_state/app_state.dart';
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
      TypedEpic<AppState, FetchScannedArtworkStart>(_fetchScannedArtworkStart).call,
      TypedEpic<AppState, FetchSelectedArtistStart>(_fetchSelectedArtistStart).call,
      TypedEpic<AppState, IsArtworkFavouriteStart>(_isArtworkFavouriteStart).call,
      TypedEpic<AppState, AddFavouriteStart>(_addFavouriteStart).call,
      TypedEpic<AppState, RemoveFavouriteStart>(_removeFavouriteStart).call,
      TypedEpic<AppState, GetFavouritesStart>(_getFavouritesStart).call,
      TypedEpic<AppState, GetArtworksStart>(_getArtworksStart).call,
      TypedEpic<AppState, GetArtistsStart>(_getArtistsStart).call,
      TypedEpic<AppState, GetCommentsStart>(_getCommentsStart).call,
      TypedEpic<AppState, AddCommentStart>(_addCommentStart).call,
      TypedEpic<AppState, UpdateArtworkImageStart>(_updateArtworkImageStart).call,
      TypedEpic<AppState, UpdateArtworkAudioStart>(_updateArtworkAudioStart).call,
      TypedEpic<AppState, UpdateArtworkArtistStart>(_updateArtworkArtistStart).call,
      TypedEpic<AppState, UpdateArtworkTitleStart>(_updateArtworkTitleStart).call,
      TypedEpic<AppState, UpdateArtworkStartCreationYearStart>(_updateArtworkStartCreationYearStart).call,
      TypedEpic<AppState, UpdateArtworkEndCreationYearStart>(_updateArtworkEndCreationYearStart).call,
      TypedEpic<AppState, UpdateArtworkTypeStart>(_updateArtworkTypeStart).call,
      TypedEpic<AppState, UpdateArtworkStyleStart>(_updateArtworkStyleStart).call,
      TypedEpic<AppState, UpdateArtworkProvenanceStart>(_updateArtworkProvenanceStart).call,
      TypedEpic<AppState, UpdateArtworkDescriptionStart>(_updateArtworkDescriptionStart).call,
      TypedEpic<AppState, UpdateArtistImageStart>(_updateArtistImageStart).call,
      TypedEpic<AppState, UpdateArtistFirstNameStart>(_updateArtistFirstNameStart).call,
      TypedEpic<AppState, UpdateArtistLastNameStart>(_updateArtistLastNameStart).call,
      TypedEpic<AppState, UpdateArtistBirthdateStart>(_updateArtistBirthdateStart).call,
      TypedEpic<AppState, UpdateArtistDeathDateStart>(_updateArtistDeathDateStart).call,
      TypedEpic<AppState, UpdateArtistDescriptionStart>(_updateArtistDescriptionStart).call,
      TypedEpic<AppState, GetArtworksWithStyleStart>(_getArtworksWithStyleStart).call,
      TypedEpic<AppState, GetTopArtistsStart>(_getTopArtistsStart).call,
      TypedEpic<AppState, GetTopArtworksStart>(_getTopArtworksStart).call,
      TypedEpic<AppState, GetAllStylesStart>(_getAllStylesStart).call,
      TypedEpic<AppState, GetByStyleStart>(_getByStyleStart).call,
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
              (Object error, StackTrace stackTrace) => GetListArtworksWithoutQrCode.error(error, stackTrace));
    });
  }

  Stream<AppAction> _fetchScannedArtworkStart(Stream<FetchScannedArtworkStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((FetchScannedArtworkStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.fetchArtwork(id: action.artworkId))
          .map<AppAction>((Artwork scannedArtwork) => FetchScannedArtwork.successful(scannedArtwork))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => FetchScannedArtwork.error(error, stackTrace));
    });
  }

  Stream<AppAction> _fetchSelectedArtistStart(Stream<FetchSelectedArtistStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((FetchSelectedArtistStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.fetchArtist(id: action.artistId))
          .map<AppAction>((Artist selectedArtist) => FetchSelectedArtist.successful(selectedArtist))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => FetchSelectedArtist.error(error, stackTrace));
    });
  }

  Stream<AppAction> _isArtworkFavouriteStart(Stream<IsArtworkFavouriteStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((IsArtworkFavouriteStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.isArtworkFavourite(artworkId: action.artworkId, userId: action.userId))
          .map((bool isFavourite) => IsArtworkFavourite.successful(isFavourite))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => IsArtworkFavourite.error(error, stackTrace));
    });
  }

  Stream<AppAction> _addFavouriteStart(Stream<AddFavouriteStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddFavouriteStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.addFavourite(
              artworkId: action.artworkId,
              userId: action.userId,
              artworkTitle: action.artworkTitle,
              artworkPictureUrl: action.artworkPictureUrl,
              artistName: action.artistName))
          .map((_) => const AddFavourite.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddFavourite.error(error, stackTrace));
    });
  }

  Stream<AppAction> _removeFavouriteStart(Stream<RemoveFavouriteStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveFavouriteStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.removeFavourite(
                artworkId: action.artworkId,
                userId: action.userId,
              ))
          .map((_) => const RemoveFavourite.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => RemoveFavourite.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getFavouritesStart(Stream<GetFavouritesStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFavouritesStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getFavouritesForUser(userId: action.userId);
          })
          .map((List<Favourite> favourites) => GetFavourites.successful(favourites))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetFavourites.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getArtworksStart(Stream<GetArtworksStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetArtworksStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getArtworks();
          })
          .map((List<Artwork> artworks) => GetArtworks.successful(artworks: artworks))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetArtworks.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getArtistsStart(Stream<GetArtistsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetArtistsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getArtists();
          })
          .map((List<Artist> artists) => GetArtists.successful(artists: artists))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetArtists.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getCommentsStart(Stream<GetCommentsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCommentsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getComments();
          })
          .map((List<Comment> comments) => GetComments.successful(comments: comments))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetComments.error(error, stackTrace));
    });
  }

  Stream<AppAction> _addCommentStart(Stream<AddCommentStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddCommentStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.addComment(
                text: action.text,
                createdAt: action.createdAt,
                idUser: action.idUser,
                firstNameUser: action.firstNameUser,
                lastNameUser: action.lastNameUser,
              ))
          .map((_) => const AddComment.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddComment.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkImageStart(Stream<UpdateArtworkImageStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkImageStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkImage(
                newPicturePath: action.newPicturePath,
                artworkId: action.artworkId,
                artworkTitle: action.artworkTitle,
                oldPictureUrl: action.oldPictureUrl,
              ))
          .map((String newPicturePath) => UpdateArtworkImage.successful(newPicturePath))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkImage.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkAudioStart(Stream<UpdateArtworkAudioStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkAudioStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkAudio(
                newAudioPath: action.newAudioPath,
                artworkId: action.artworkId,
                artworkTitle: action.artworkTitle,
                oldAudioUrl: action.oldAudioUrl,
              ))
          .map((String newAudioPath) => UpdateArtworkAudio.successful(newAudioPath))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkAudio.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkArtistStart(Stream<UpdateArtworkArtistStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkArtistStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkArtist(artist: action.artist, artworkId: action.artworkId))
          .map((ArtistForFetch artist) => UpdateArtworkArtist.successful(artist))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkArtist.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkTitleStart(Stream<UpdateArtworkTitleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkTitleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkTitle(newTitle: action.newTitle, artworkId: action.artworkId))
          .map((String newTitle) => UpdateArtworkTitle.successful(newTitle))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkTitle.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkStartCreationYearStart(
      Stream<UpdateArtworkStartCreationYearStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkStartCreationYearStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkStartCreationYear(newYear: action.newYear, artworkId: action.artworkId))
          .map((int newYear) => UpdateArtworkStartCreationYear.successful(newYear))
          .onErrorReturnWith(
              (Object error, StackTrace stackTrace) => UpdateArtworkStartCreationYear.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkEndCreationYearStart(
      Stream<UpdateArtworkEndCreationYearStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkEndCreationYearStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkEndCreationYear(newYear: action.newYear, artworkId: action.artworkId))
          .map((int newYear) => UpdateArtworkEndCreationYear.successful(newYear))
          .onErrorReturnWith(
              (Object error, StackTrace stackTrace) => UpdateArtworkEndCreationYear.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkTypeStart(Stream<UpdateArtworkTypeStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkTypeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkType(newType: action.newType, artworkId: action.artworkId))
          .map((String newType) => UpdateArtworkType.successful(newType))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkType.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkStyleStart(Stream<UpdateArtworkStyleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkStyleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtworkStyle(newStyle: action.newStyle, artworkId: action.artworkId))
          .map((String newStyle) => UpdateArtworkStyle.successful(newStyle))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkStyle.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkProvenanceStart(
      Stream<UpdateArtworkProvenanceStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkProvenanceStart action) {
      return Stream<void>.value(null)
          .asyncMap(
              (_) => appApi.updateArtworkProvenance(newProvenance: action.newProvenance, artworkId: action.artworkId))
          .map((String newProvenance) => UpdateArtworkProvenance.successful(newProvenance))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtworkProvenance.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtworkDescriptionStart(
      Stream<UpdateArtworkDescriptionStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtworkDescriptionStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) =>
              appApi.updateArtworkDescription(newDescription: action.newDescription, artworkId: action.artworkId))
          .map((String newDescription) => UpdateArtworkDescription.successful(newDescription))
          .onErrorReturnWith(
              (Object error, StackTrace stackTrace) => UpdateArtworkDescription.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistImageStart(Stream<UpdateArtistImageStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistImageStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtistImage(
              newPicturePath: action.newPicturePath,
              artistId: action.artistId,
              artistFirstName: action.artistFirstName,
              oldPictureUrl: action.oldPictureUrl))
          .map((String newPicturePath) => UpdateArtistImage.successful(newPicturePath))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistImage.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistFirstNameStart(Stream<UpdateArtistFirstNameStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistFirstNameStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtistFirstName(newFirstName: action.newFirstName, artistId: action.artistId))
          .map((String newFirstName) => UpdateArtistFirstName.successful(newFirstName))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistFirstName.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistLastNameStart(Stream<UpdateArtistLastNameStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistLastNameStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtistLastName(newLastName: action.newLastName, artistId: action.artistId))
          .map((String newLastName) => UpdateArtistLastName.successful(newLastName))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistLastName.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistBirthdateStart(Stream<UpdateArtistBirthdateStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistBirthdateStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtistBirthdate(newBirthdate: action.newBirthdate, artistId: action.artistId))
          .map((DateTime? newBirthdate) => UpdateArtistBirthdate.successful(newBirthdate))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistBirthdate.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistDeathDateStart(Stream<UpdateArtistDeathDateStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistDeathDateStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => appApi.updateArtistDeathDate(newDeathDate: action.newDeathDate, artistId: action.artistId))
          .map((DateTime? newDeathDate) => UpdateArtistDeathDate.successful(newDeathDate))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistDeathDate.error(error, stackTrace));
    });
  }

  Stream<AppAction> _updateArtistDescriptionStart(
      Stream<UpdateArtistDescriptionStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateArtistDescriptionStart action) {
      return Stream<void>.value(null)
          .asyncMap(
              (_) => appApi.updateArtistDescription(newDescription: action.newDescription, artistId: action.artistId))
          .map((String newDescription) => UpdateArtistDescription.successful(newDescription))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateArtistDescription.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getArtworksWithStyleStart(Stream<GetArtworksWithStyleStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetArtworksWithStyleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getTopUniqueStylesFromArtworks();
          })
          .map((List<ArtworkForArtMovements> artworksForArtMovements) =>
              GetArtworksWithStyle.successful(artworksForArtMovements: artworksForArtMovements))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetArtworksWithStyle.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getTopArtistsStart(Stream<GetTopArtistsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetTopArtistsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getTopArtists();
          })
          .map((List<Artist> artists) => GetTopArtists.successful(artists: artists))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetTopArtists.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getTopArtworksStart(Stream<GetTopArtworksStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetTopArtworksStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getTopArtworks();
          })
          .map((List<ArtworkForTop> artworksForTop) => GetTopArtworks.successful(artworksForTop: artworksForTop))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetTopArtworks.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getAllStylesStart(Stream<GetAllStylesStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetAllStylesStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getUniqueStylesFromArtworks();
          })
          .map((List<ArtworkForArtMovements> artworksWithAllStyles) =>
              GetAllStyles.successful(artworksWithAllStyles: artworksWithAllStyles))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetAllStyles.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getByStyleStart(Stream<GetByStyleStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetByStyleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return appApi.getArtworksByStyle(style: action.style);
          })
          .map((List<ArtworkByStyle> artworksByStyle) => GetByStyle.successful(artworksByStyle))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetByStyle.error(error, stackTrace));
    });
  }
}
