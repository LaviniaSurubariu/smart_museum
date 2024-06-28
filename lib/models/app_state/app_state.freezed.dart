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
      ArtworkWithoutQrCode? selectedArtworkWithoutQrCode});

  $AppUserCopyWith<$Res>? get user;
  $ArtworkWithoutQrCodeCopyWith<$Res>? get selectedArtworkWithoutQrCode;
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
      ArtworkWithoutQrCode? selectedArtworkWithoutQrCode});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $ArtworkWithoutQrCodeCopyWith<$Res>? get selectedArtworkWithoutQrCode;
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      final List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
      this.selectedArtworkWithoutQrCode})
      : _artworksWithoutQrCode = artworksWithoutQrCode;

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
  String toString() {
    return 'AppState(user: $user, artworksWithoutQrCode: $artworksWithoutQrCode, selectedArtworkWithoutQrCode: $selectedArtworkWithoutQrCode)';
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
                    selectedArtworkWithoutQrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_artworksWithoutQrCode),
      selectedArtworkWithoutQrCode);

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
          final ArtworkWithoutQrCode? selectedArtworkWithoutQrCode}) =
      _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  List<ArtworkWithoutQrCode>? get artworksWithoutQrCode;
  @override
  ArtworkWithoutQrCode? get selectedArtworkWithoutQrCode;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
