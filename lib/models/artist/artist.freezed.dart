// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist$.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  String get uid => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;
  DateTime? get deathDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String pictureUrl,
      DateTime birthdate,
      DateTime? deathDate,
      String description});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? pictureUrl = null,
    Object? birthdate = null,
    Object? deathDate = freezed,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Artist$ImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$Artist$ImplCopyWith(
          _$Artist$Impl value, $Res Function(_$Artist$Impl) then) =
      __$$Artist$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String pictureUrl,
      DateTime birthdate,
      DateTime? deathDate,
      String description});
}

/// @nodoc
class __$$Artist$ImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$Artist$Impl>
    implements _$$Artist$ImplCopyWith<$Res> {
  __$$Artist$ImplCopyWithImpl(
      _$Artist$Impl _value, $Res Function(_$Artist$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? pictureUrl = null,
    Object? birthdate = null,
    Object? deathDate = freezed,
    Object? description = null,
  }) {
    return _then(_$Artist$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Artist$Impl implements Artist$ {
  const _$Artist$Impl(
      {required this.uid,
      required this.firstName,
      required this.lastName,
      required this.pictureUrl,
      required this.birthdate,
      required this.deathDate,
      required this.description});

  factory _$Artist$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Artist$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String pictureUrl;
  @override
  final DateTime birthdate;
  @override
  final DateTime? deathDate;
  @override
  final String description;

  @override
  String toString() {
    return 'Artist(uid: $uid, firstName: $firstName, lastName: $lastName, pictureUrl: $pictureUrl, birthdate: $birthdate, deathDate: $deathDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Artist$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, firstName, lastName,
      pictureUrl, birthdate, deathDate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Artist$ImplCopyWith<_$Artist$Impl> get copyWith =>
      __$$Artist$ImplCopyWithImpl<_$Artist$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Artist$ImplToJson(
      this,
    );
  }
}

abstract class Artist$ implements Artist {
  const factory Artist$(
      {required final String uid,
      required final String firstName,
      required final String lastName,
      required final String pictureUrl,
      required final DateTime birthdate,
      required final DateTime? deathDate,
      required final String description}) = _$Artist$Impl;

  factory Artist$.fromJson(Map<String, dynamic> json) = _$Artist$Impl.fromJson;

  @override
  String get uid;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get pictureUrl;
  @override
  DateTime get birthdate;
  @override
  DateTime? get deathDate;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$Artist$ImplCopyWith<_$Artist$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
