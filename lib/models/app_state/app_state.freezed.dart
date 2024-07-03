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
  int? get routeIndex => throw _privateConstructorUsedError;
  List<Artwork>? get artworks => throw _privateConstructorUsedError;

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
      int? routeIndex,
      List<Artwork>? artworks});

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
    Object? routeIndex = freezed,
    Object? artworks = freezed,
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
      routeIndex: freezed == routeIndex
          ? _value.routeIndex
          : routeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      artworks: freezed == artworks
          ? _value.artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>?,
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
      int? routeIndex,
      List<Artwork>? artworks});

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
    Object? routeIndex = freezed,
    Object? artworks = freezed,
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
      routeIndex: freezed == routeIndex
          ? _value.routeIndex
          : routeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      artworks: freezed == artworks
          ? _value._artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>?,
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
      this.routeIndex,
      final List<Artwork>? artworks})
      : _artworksWithoutQrCode = artworksWithoutQrCode,
        _favourites = favourites,
        _artworks = artworks;

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
  final int? routeIndex;
  final List<Artwork>? _artworks;
  @override
  List<Artwork>? get artworks {
    final value = _artworks;
    if (value == null) return null;
    if (_artworks is EqualUnmodifiableListView) return _artworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppState(user: $user, artworksWithoutQrCode: $artworksWithoutQrCode, selectedArtworkWithoutQrCode: $selectedArtworkWithoutQrCode, scannedArtwork: $scannedArtwork, selectedArtwork: $selectedArtwork, selectedArtist: $selectedArtist, isFavourite: $isFavourite, favourites: $favourites, routeIndex: $routeIndex, artworks: $artworks)';
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
            (identical(other.routeIndex, routeIndex) ||
                other.routeIndex == routeIndex) &&
            const DeepCollectionEquality().equals(other._artworks, _artworks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_artworksWithoutQrCode),
      selectedArtworkWithoutQrCode,
      scannedArtwork,
      selectedArtwork,
      selectedArtist,
      isFavourite,
      const DeepCollectionEquality().hash(_favourites),
      routeIndex,
      const DeepCollectionEquality().hash(_artworks));

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
      final int? routeIndex,
      final List<Artwork>? artworks}) = _$AppState$Impl;

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
  int? get routeIndex;
  @override
  List<Artwork>? get artworks;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
