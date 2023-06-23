// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_character_comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCharacterComic _$ApiResponseCharacterComicFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCharacterComic.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCharacterComic {
  CharacterComicData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCharacterComicCopyWith<ApiResponseCharacterComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCharacterComicCopyWith<$Res> {
  factory $ApiResponseCharacterComicCopyWith(ApiResponseCharacterComic value,
          $Res Function(ApiResponseCharacterComic) then) =
      _$ApiResponseCharacterComicCopyWithImpl<$Res, ApiResponseCharacterComic>;
  @useResult
  $Res call({CharacterComicData data});

  $CharacterComicDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCharacterComicCopyWithImpl<$Res,
        $Val extends ApiResponseCharacterComic>
    implements $ApiResponseCharacterComicCopyWith<$Res> {
  _$ApiResponseCharacterComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterComicData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterComicDataCopyWith<$Res> get data {
    return $CharacterComicDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCharacterComicCopyWith<$Res>
    implements $ApiResponseCharacterComicCopyWith<$Res> {
  factory _$$_ApiResponseCharacterComicCopyWith(
          _$_ApiResponseCharacterComic value,
          $Res Function(_$_ApiResponseCharacterComic) then) =
      __$$_ApiResponseCharacterComicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterComicData data});

  @override
  $CharacterComicDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCharacterComicCopyWithImpl<$Res>
    extends _$ApiResponseCharacterComicCopyWithImpl<$Res,
        _$_ApiResponseCharacterComic>
    implements _$$_ApiResponseCharacterComicCopyWith<$Res> {
  __$$_ApiResponseCharacterComicCopyWithImpl(
      _$_ApiResponseCharacterComic _value,
      $Res Function(_$_ApiResponseCharacterComic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCharacterComic(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterComicData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCharacterComic implements _ApiResponseCharacterComic {
  const _$_ApiResponseCharacterComic({required this.data});

  factory _$_ApiResponseCharacterComic.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCharacterComicFromJson(json);

  @override
  final CharacterComicData data;

  @override
  String toString() {
    return 'ApiResponseCharacterComic(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCharacterComic &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCharacterComicCopyWith<_$_ApiResponseCharacterComic>
      get copyWith => __$$_ApiResponseCharacterComicCopyWithImpl<
          _$_ApiResponseCharacterComic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCharacterComicToJson(
      this,
    );
  }
}

abstract class _ApiResponseCharacterComic implements ApiResponseCharacterComic {
  const factory _ApiResponseCharacterComic(
      {required final CharacterComicData data}) = _$_ApiResponseCharacterComic;

  factory _ApiResponseCharacterComic.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCharacterComic.fromJson;

  @override
  CharacterComicData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCharacterComicCopyWith<_$_ApiResponseCharacterComic>
      get copyWith => throw _privateConstructorUsedError;
}
