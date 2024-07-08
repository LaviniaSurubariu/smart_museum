// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork_without_qr_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtworkWithoutQrCode _$ArtworkWithoutQrCodeFromJson(Map<String, dynamic> json) {
  return ArtworkWithoutQrCode$.fromJson(json);
}

/// @nodoc
mixin _$ArtworkWithoutQrCode {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkWithoutQrCodeCopyWith<ArtworkWithoutQrCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkWithoutQrCodeCopyWith<$Res> {
  factory $ArtworkWithoutQrCodeCopyWith(ArtworkWithoutQrCode value,
          $Res Function(ArtworkWithoutQrCode) then) =
      _$ArtworkWithoutQrCodeCopyWithImpl<$Res, ArtworkWithoutQrCode>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ArtworkWithoutQrCodeCopyWithImpl<$Res,
        $Val extends ArtworkWithoutQrCode>
    implements $ArtworkWithoutQrCodeCopyWith<$Res> {
  _$ArtworkWithoutQrCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtworkWithoutQrCode$ImplCopyWith<$Res>
    implements $ArtworkWithoutQrCodeCopyWith<$Res> {
  factory _$$ArtworkWithoutQrCode$ImplCopyWith(
          _$ArtworkWithoutQrCode$Impl value,
          $Res Function(_$ArtworkWithoutQrCode$Impl) then) =
      __$$ArtworkWithoutQrCode$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$ArtworkWithoutQrCode$ImplCopyWithImpl<$Res>
    extends _$ArtworkWithoutQrCodeCopyWithImpl<$Res,
        _$ArtworkWithoutQrCode$Impl>
    implements _$$ArtworkWithoutQrCode$ImplCopyWith<$Res> {
  __$$ArtworkWithoutQrCode$ImplCopyWithImpl(_$ArtworkWithoutQrCode$Impl _value,
      $Res Function(_$ArtworkWithoutQrCode$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ArtworkWithoutQrCode$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtworkWithoutQrCode$Impl implements ArtworkWithoutQrCode$ {
  const _$ArtworkWithoutQrCode$Impl({required this.id, required this.title});

  factory _$ArtworkWithoutQrCode$Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkWithoutQrCode$ImplFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'ArtworkWithoutQrCode(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkWithoutQrCode$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkWithoutQrCode$ImplCopyWith<_$ArtworkWithoutQrCode$Impl>
      get copyWith => __$$ArtworkWithoutQrCode$ImplCopyWithImpl<
          _$ArtworkWithoutQrCode$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkWithoutQrCode$ImplToJson(
      this,
    );
  }
}

abstract class ArtworkWithoutQrCode$ implements ArtworkWithoutQrCode {
  const factory ArtworkWithoutQrCode$(
      {required final String id,
      required final String title}) = _$ArtworkWithoutQrCode$Impl;

  factory ArtworkWithoutQrCode$.fromJson(Map<String, dynamic> json) =
      _$ArtworkWithoutQrCode$Impl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkWithoutQrCode$ImplCopyWith<_$ArtworkWithoutQrCode$Impl>
      get copyWith => throw _privateConstructorUsedError;
}
