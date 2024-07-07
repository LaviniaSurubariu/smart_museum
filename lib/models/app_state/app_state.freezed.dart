// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  List<ArtworkWithoutQrCode>? get artworksWithoutQrCode =>
      throw _privateConstructorUsedError;
  ArtworkWithoutQrCode? get selectedArtworkWithoutQrCode =>
      throw _privateConstructorUsedError;
  Artwork? get scannedArtwork => throw _privateConstructorUsedError;
  Artwork? get selectedArtwork => throw _privateConstructorUsedError;
  Artist? get selectedArtist => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;
  List<Favourite>? get favourites => throw _privateConstructorUsedError;
  int? get routeArtworkIndex => throw _privateConstructorUsedError;
  int? get routeArtistIndex => throw _privateConstructorUsedError;
  List<Artwork>? get artworks => throw _privateConstructorUsedError;
  List<Artist>? get artists => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;
  List<ArtworkForArtMovements>? get artworksForArtMovements =>
      throw _privateConstructorUsedError;
  List<Artist>? get topArtists => throw _privateConstructorUsedError;
  List<ArtworkForTop>? get topArtworks => throw _privateConstructorUsedError;
  List<ArtworkForArtMovements>? get artworksWithAllStyles =>
      throw _privateConstructorUsedError;
  List<ArtworkByStyle>? get artworksByStyle =>
      throw _privateConstructorUsedError;
  String? get selectedStyle => throw _privateConstructorUsedError;
  int? get routeAdminArtworkIndex => throw _privateConstructorUsedError;
  int? get routeAdminArtistIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppUser? user,
      List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
      ArtworkWithoutQrCode? selectedArtworkWithoutQrCode,
      Artwork? scannedArtwork,
      Artwork? selectedArtwork,
      Artist? selectedArtist,
      bool? isFavourite,
      List<Favourite>? favourites,
      int? routeArtworkIndex,
      int? routeArtistIndex,
      List<Artwork>? artworks,
      List<Artist>? artists,
      List<Comment>? comments,
      List<ArtworkForArtMovements>? artworksForArtMovements,
      List<Artist>? topArtists,
      List<ArtworkForTop>? topArtworks,
      List<ArtworkForArtMovements>? artworksWithAllStyles,
      List<ArtworkByStyle>? artworksByStyle,
      String? selectedStyle,
      int? routeAdminArtworkIndex,
      int? routeAdminArtistIndex});

  $AppUserCopyWith<$Res>? get user;
  $ArtworkWithoutQrCodeCopyWith<$Res>? get selectedArtworkWithoutQrCode;
  $ArtworkCopyWith<$Res>? get scannedArtwork;
  $ArtworkCopyWith<$Res>? get selectedArtwork;
  $ArtistCopyWith<$Res>? get selectedArtist;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? artworksWithoutQrCode = freezed,
    Object? selectedArtworkWithoutQrCode = freezed,
    Object? scannedArtwork = freezed,
    Object? selectedArtwork = freezed,
    Object? selectedArtist = freezed,
    Object? isFavourite = freezed,
    Object? favourites = freezed,
    Object? routeArtworkIndex = freezed,
    Object? routeArtistIndex = freezed,
    Object? artworks = freezed,
    Object? artists = freezed,
    Object? comments = freezed,
    Object? artworksForArtMovements = freezed,
    Object? topArtists = freezed,
    Object? topArtworks = freezed,
    Object? artworksWithAllStyles = freezed,
    Object? artworksByStyle = freezed,
    Object? selectedStyle = freezed,
    Object? routeAdminArtworkIndex = freezed,
    Object? routeAdminArtistIndex = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      artworksWithoutQrCode: freezed == artworksWithoutQrCode
          ? _value.artworksWithoutQrCode
          : artworksWithoutQrCode // ignore: cast_nullable_to_non_nullable
              as List<ArtworkWithoutQrCode>?,
      selectedArtworkWithoutQrCode: freezed == selectedArtworkWithoutQrCode
          ? _value.selectedArtworkWithoutQrCode
          : selectedArtworkWithoutQrCode // ignore: cast_nullable_to_non_nullable
              as ArtworkWithoutQrCode?,
      scannedArtwork: freezed == scannedArtwork
          ? _value.scannedArtwork
          : scannedArtwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      selectedArtwork: freezed == selectedArtwork
          ? _value.selectedArtwork
          : selectedArtwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      selectedArtist: freezed == selectedArtist
          ? _value.selectedArtist
          : selectedArtist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<Favourite>?,
      routeArtworkIndex: freezed == routeArtworkIndex
          ? _value.routeArtworkIndex
          : routeArtworkIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      routeArtistIndex: freezed == routeArtistIndex
          ? _value.routeArtistIndex
          : routeArtistIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      artworks: freezed == artworks
          ? _value.artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      artworksForArtMovements: freezed == artworksForArtMovements
          ? _value.artworksForArtMovements
          : artworksForArtMovements // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForArtMovements>?,
      topArtists: freezed == topArtists
          ? _value.topArtists
          : topArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      topArtworks: freezed == topArtworks
          ? _value.topArtworks
          : topArtworks // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForTop>?,
      artworksWithAllStyles: freezed == artworksWithAllStyles
          ? _value.artworksWithAllStyles
          : artworksWithAllStyles // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForArtMovements>?,
      artworksByStyle: freezed == artworksByStyle
          ? _value.artworksByStyle
          : artworksByStyle // ignore: cast_nullable_to_non_nullable
              as List<ArtworkByStyle>?,
      selectedStyle: freezed == selectedStyle
          ? _value.selectedStyle
          : selectedStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      routeAdminArtworkIndex: freezed == routeAdminArtworkIndex
          ? _value.routeAdminArtworkIndex
          : routeAdminArtworkIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      routeAdminArtistIndex: freezed == routeAdminArtistIndex
          ? _value.routeAdminArtistIndex
          : routeAdminArtistIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkWithoutQrCodeCopyWith<$Res>? get selectedArtworkWithoutQrCode {
    if (_value.selectedArtworkWithoutQrCode == null) {
      return null;
    }

    return $ArtworkWithoutQrCodeCopyWith<$Res>(
        _value.selectedArtworkWithoutQrCode!, (value) {
      return _then(
          _value.copyWith(selectedArtworkWithoutQrCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkCopyWith<$Res>? get scannedArtwork {
    if (_value.scannedArtwork == null) {
      return null;
    }

    return $ArtworkCopyWith<$Res>(_value.scannedArtwork!, (value) {
      return _then(_value.copyWith(scannedArtwork: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkCopyWith<$Res>? get selectedArtwork {
    if (_value.selectedArtwork == null) {
      return null;
    }

    return $ArtworkCopyWith<$Res>(_value.selectedArtwork!, (value) {
      return _then(_value.copyWith(selectedArtwork: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res>? get selectedArtist {
    if (_value.selectedArtist == null) {
      return null;
    }

    return $ArtistCopyWith<$Res>(_value.selectedArtist!, (value) {
      return _then(_value.copyWith(selectedArtist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(
          _$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
      ArtworkWithoutQrCode? selectedArtworkWithoutQrCode,
      Artwork? scannedArtwork,
      Artwork? selectedArtwork,
      Artist? selectedArtist,
      bool? isFavourite,
      List<Favourite>? favourites,
      int? routeArtworkIndex,
      int? routeArtistIndex,
      List<Artwork>? artworks,
      List<Artist>? artists,
      List<Comment>? comments,
      List<ArtworkForArtMovements>? artworksForArtMovements,
      List<Artist>? topArtists,
      List<ArtworkForTop>? topArtworks,
      List<ArtworkForArtMovements>? artworksWithAllStyles,
      List<ArtworkByStyle>? artworksByStyle,
      String? selectedStyle,
      int? routeAdminArtworkIndex,
      int? routeAdminArtistIndex});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $ArtworkWithoutQrCodeCopyWith<$Res>? get selectedArtworkWithoutQrCode;
  @override
  $ArtworkCopyWith<$Res>? get scannedArtwork;
  @override
  $ArtworkCopyWith<$Res>? get selectedArtwork;
  @override
  $ArtistCopyWith<$Res>? get selectedArtist;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(
      _$AppState$Impl _value, $Res Function(_$AppState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? artworksWithoutQrCode = freezed,
    Object? selectedArtworkWithoutQrCode = freezed,
    Object? scannedArtwork = freezed,
    Object? selectedArtwork = freezed,
    Object? selectedArtist = freezed,
    Object? isFavourite = freezed,
    Object? favourites = freezed,
    Object? routeArtworkIndex = freezed,
    Object? routeArtistIndex = freezed,
    Object? artworks = freezed,
    Object? artists = freezed,
    Object? comments = freezed,
    Object? artworksForArtMovements = freezed,
    Object? topArtists = freezed,
    Object? topArtworks = freezed,
    Object? artworksWithAllStyles = freezed,
    Object? artworksByStyle = freezed,
    Object? selectedStyle = freezed,
    Object? routeAdminArtworkIndex = freezed,
    Object? routeAdminArtistIndex = freezed,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      artworksWithoutQrCode: freezed == artworksWithoutQrCode
          ? _value._artworksWithoutQrCode
          : artworksWithoutQrCode // ignore: cast_nullable_to_non_nullable
              as List<ArtworkWithoutQrCode>?,
      selectedArtworkWithoutQrCode: freezed == selectedArtworkWithoutQrCode
          ? _value.selectedArtworkWithoutQrCode
          : selectedArtworkWithoutQrCode // ignore: cast_nullable_to_non_nullable
              as ArtworkWithoutQrCode?,
      scannedArtwork: freezed == scannedArtwork
          ? _value.scannedArtwork
          : scannedArtwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      selectedArtwork: freezed == selectedArtwork
          ? _value.selectedArtwork
          : selectedArtwork // ignore: cast_nullable_to_non_nullable
              as Artwork?,
      selectedArtist: freezed == selectedArtist
          ? _value.selectedArtist
          : selectedArtist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      favourites: freezed == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<Favourite>?,
      routeArtworkIndex: freezed == routeArtworkIndex
          ? _value.routeArtworkIndex
          : routeArtworkIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      routeArtistIndex: freezed == routeArtistIndex
          ? _value.routeArtistIndex
          : routeArtistIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      artworks: freezed == artworks
          ? _value._artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>?,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      artworksForArtMovements: freezed == artworksForArtMovements
          ? _value._artworksForArtMovements
          : artworksForArtMovements // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForArtMovements>?,
      topArtists: freezed == topArtists
          ? _value._topArtists
          : topArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      topArtworks: freezed == topArtworks
          ? _value._topArtworks
          : topArtworks // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForTop>?,
      artworksWithAllStyles: freezed == artworksWithAllStyles
          ? _value._artworksWithAllStyles
          : artworksWithAllStyles // ignore: cast_nullable_to_non_nullable
              as List<ArtworkForArtMovements>?,
      artworksByStyle: freezed == artworksByStyle
          ? _value._artworksByStyle
          : artworksByStyle // ignore: cast_nullable_to_non_nullable
              as List<ArtworkByStyle>?,
      selectedStyle: freezed == selectedStyle
          ? _value.selectedStyle
          : selectedStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      routeAdminArtworkIndex: freezed == routeAdminArtworkIndex
          ? _value.routeAdminArtworkIndex
          : routeAdminArtworkIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      routeAdminArtistIndex: freezed == routeAdminArtistIndex
          ? _value.routeAdminArtistIndex
          : routeAdminArtistIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      final List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
      this.selectedArtworkWithoutQrCode,
      this.scannedArtwork,
      this.selectedArtwork,
      this.selectedArtist,
      this.isFavourite,
      final List<Favourite>? favourites,
      this.routeArtworkIndex,
      this.routeArtistIndex,
      final List<Artwork>? artworks,
      final List<Artist>? artists,
      final List<Comment>? comments,
      final List<ArtworkForArtMovements>? artworksForArtMovements,
      final List<Artist>? topArtists,
      final List<ArtworkForTop>? topArtworks,
      final List<ArtworkForArtMovements>? artworksWithAllStyles,
      final List<ArtworkByStyle>? artworksByStyle,
      this.selectedStyle,
      this.routeAdminArtworkIndex,
      this.routeAdminArtistIndex})
      : _artworksWithoutQrCode = artworksWithoutQrCode,
        _favourites = favourites,
        _artworks = artworks,
        _artists = artists,
        _comments = comments,
        _artworksForArtMovements = artworksForArtMovements,
        _topArtists = topArtists,
        _topArtworks = topArtworks,
        _artworksWithAllStyles = artworksWithAllStyles,
        _artworksByStyle = artworksByStyle;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  final List<ArtworkWithoutQrCode>? _artworksWithoutQrCode;
  @override
  List<ArtworkWithoutQrCode>? get artworksWithoutQrCode {
    final value = _artworksWithoutQrCode;
    if (value == null) return null;
    if (_artworksWithoutQrCode is EqualUnmodifiableListView)
      return _artworksWithoutQrCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ArtworkWithoutQrCode? selectedArtworkWithoutQrCode;
  @override
  final Artwork? scannedArtwork;
  @override
  final Artwork? selectedArtwork;
  @override
  final Artist? selectedArtist;
  @override
  final bool? isFavourite;
  final List<Favourite>? _favourites;
  @override
  List<Favourite>? get favourites {
    final value = _favourites;
    if (value == null) return null;
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? routeArtworkIndex;
  @override
  final int? routeArtistIndex;
  final List<Artwork>? _artworks;
  @override
  List<Artwork>? get artworks {
    final value = _artworks;
    if (value == null) return null;
    if (_artworks is EqualUnmodifiableListView) return _artworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Artist>? _artists;
  @override
  List<Artist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Comment>? _comments;
  @override
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArtworkForArtMovements>? _artworksForArtMovements;
  @override
  List<ArtworkForArtMovements>? get artworksForArtMovements {
    final value = _artworksForArtMovements;
    if (value == null) return null;
    if (_artworksForArtMovements is EqualUnmodifiableListView)
      return _artworksForArtMovements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Artist>? _topArtists;
  @override
  List<Artist>? get topArtists {
    final value = _topArtists;
    if (value == null) return null;
    if (_topArtists is EqualUnmodifiableListView) return _topArtists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArtworkForTop>? _topArtworks;
  @override
  List<ArtworkForTop>? get topArtworks {
    final value = _topArtworks;
    if (value == null) return null;
    if (_topArtworks is EqualUnmodifiableListView) return _topArtworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArtworkForArtMovements>? _artworksWithAllStyles;
  @override
  List<ArtworkForArtMovements>? get artworksWithAllStyles {
    final value = _artworksWithAllStyles;
    if (value == null) return null;
    if (_artworksWithAllStyles is EqualUnmodifiableListView)
      return _artworksWithAllStyles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ArtworkByStyle>? _artworksByStyle;
  @override
  List<ArtworkByStyle>? get artworksByStyle {
    final value = _artworksByStyle;
    if (value == null) return null;
    if (_artworksByStyle is EqualUnmodifiableListView) return _artworksByStyle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? selectedStyle;
  @override
  final int? routeAdminArtworkIndex;
  @override
  final int? routeAdminArtistIndex;

  @override
  String toString() {
    return 'AppState(user: $user, artworksWithoutQrCode: $artworksWithoutQrCode, selectedArtworkWithoutQrCode: $selectedArtworkWithoutQrCode, scannedArtwork: $scannedArtwork, selectedArtwork: $selectedArtwork, selectedArtist: $selectedArtist, isFavourite: $isFavourite, favourites: $favourites, routeArtworkIndex: $routeArtworkIndex, routeArtistIndex: $routeArtistIndex, artworks: $artworks, artists: $artists, comments: $comments, artworksForArtMovements: $artworksForArtMovements, topArtists: $topArtists, topArtworks: $topArtworks, artworksWithAllStyles: $artworksWithAllStyles, artworksByStyle: $artworksByStyle, selectedStyle: $selectedStyle, routeAdminArtworkIndex: $routeAdminArtworkIndex, routeAdminArtistIndex: $routeAdminArtistIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._artworksWithoutQrCode, _artworksWithoutQrCode) &&
            (identical(other.selectedArtworkWithoutQrCode,
                    selectedArtworkWithoutQrCode) ||
                other.selectedArtworkWithoutQrCode ==
                    selectedArtworkWithoutQrCode) &&
            (identical(other.scannedArtwork, scannedArtwork) ||
                other.scannedArtwork == scannedArtwork) &&
            (identical(other.selectedArtwork, selectedArtwork) ||
                other.selectedArtwork == selectedArtwork) &&
            (identical(other.selectedArtist, selectedArtist) ||
                other.selectedArtist == selectedArtist) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            (identical(other.routeArtworkIndex, routeArtworkIndex) ||
                other.routeArtworkIndex == routeArtworkIndex) &&
            (identical(other.routeArtistIndex, routeArtistIndex) ||
                other.routeArtistIndex == routeArtistIndex) &&
            const DeepCollectionEquality().equals(other._artworks, _artworks) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(
                other._artworksForArtMovements, _artworksForArtMovements) &&
            const DeepCollectionEquality()
                .equals(other._topArtists, _topArtists) &&
            const DeepCollectionEquality()
                .equals(other._topArtworks, _topArtworks) &&
            const DeepCollectionEquality()
                .equals(other._artworksWithAllStyles, _artworksWithAllStyles) &&
            const DeepCollectionEquality()
                .equals(other._artworksByStyle, _artworksByStyle) &&
            (identical(other.selectedStyle, selectedStyle) ||
                other.selectedStyle == selectedStyle) &&
            (identical(other.routeAdminArtworkIndex, routeAdminArtworkIndex) ||
                other.routeAdminArtworkIndex == routeAdminArtworkIndex) &&
            (identical(other.routeAdminArtistIndex, routeAdminArtistIndex) ||
                other.routeAdminArtistIndex == routeAdminArtistIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        user,
        const DeepCollectionEquality().hash(_artworksWithoutQrCode),
        selectedArtworkWithoutQrCode,
        scannedArtwork,
        selectedArtwork,
        selectedArtist,
        isFavourite,
        const DeepCollectionEquality().hash(_favourites),
        routeArtworkIndex,
        routeArtistIndex,
        const DeepCollectionEquality().hash(_artworks),
        const DeepCollectionEquality().hash(_artists),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_artworksForArtMovements),
        const DeepCollectionEquality().hash(_topArtists),
        const DeepCollectionEquality().hash(_topArtworks),
        const DeepCollectionEquality().hash(_artworksWithAllStyles),
        const DeepCollectionEquality().hash(_artworksByStyle),
        selectedStyle,
        routeAdminArtworkIndex,
        routeAdminArtistIndex
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AppUser? user,
      final List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
      final ArtworkWithoutQrCode? selectedArtworkWithoutQrCode,
      final Artwork? scannedArtwork,
      final Artwork? selectedArtwork,
      final Artist? selectedArtist,
      final bool? isFavourite,
      final List<Favourite>? favourites,
      final int? routeArtworkIndex,
      final int? routeArtistIndex,
      final List<Artwork>? artworks,
      final List<Artist>? artists,
      final List<Comment>? comments,
      final List<ArtworkForArtMovements>? artworksForArtMovements,
      final List<Artist>? topArtists,
      final List<ArtworkForTop>? topArtworks,
      final List<ArtworkForArtMovements>? artworksWithAllStyles,
      final List<ArtworkByStyle>? artworksByStyle,
      final String? selectedStyle,
      final int? routeAdminArtworkIndex,
      final int? routeAdminArtistIndex}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  List<ArtworkWithoutQrCode>? get artworksWithoutQrCode;
  @override
  ArtworkWithoutQrCode? get selectedArtworkWithoutQrCode;
  @override
  Artwork? get scannedArtwork;
  @override
  Artwork? get selectedArtwork;
  @override
  Artist? get selectedArtist;
  @override
  bool? get isFavourite;
  @override
  List<Favourite>? get favourites;
  @override
  int? get routeArtworkIndex;
  @override
  int? get routeArtistIndex;
  @override
  List<Artwork>? get artworks;
  @override
  List<Artist>? get artists;
  @override
  List<Comment>? get comments;
  @override
  List<ArtworkForArtMovements>? get artworksForArtMovements;
  @override
  List<Artist>? get topArtists;
  @override
  List<ArtworkForTop>? get topArtworks;
  @override
  List<ArtworkForArtMovements>? get artworksWithAllStyles;
  @override
  List<ArtworkByStyle>? get artworksByStyle;
  @override
  String? get selectedStyle;
  @override
  int? get routeAdminArtworkIndex;
  @override
  int? get routeAdminArtistIndex;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
