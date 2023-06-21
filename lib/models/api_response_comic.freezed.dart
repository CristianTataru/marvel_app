// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseComic _$ApiResponseComicFromJson(Map<String, dynamic> json) {
  return _ApiResponseComic.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseComic {
  ComicData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseComicCopyWith<ApiResponseComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseComicCopyWith<$Res> {
  factory $ApiResponseComicCopyWith(
          ApiResponseComic value, $Res Function(ApiResponseComic) then) =
      _$ApiResponseComicCopyWithImpl<$Res, ApiResponseComic>;
  @useResult
  $Res call({ComicData data});

  $ComicDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseComicCopyWithImpl<$Res, $Val extends ApiResponseComic>
    implements $ApiResponseComicCopyWith<$Res> {
  _$ApiResponseComicCopyWithImpl(this._value, this._then);

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
              as ComicData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicDataCopyWith<$Res> get data {
    return $ComicDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseComicCopyWith<$Res>
    implements $ApiResponseComicCopyWith<$Res> {
  factory _$$_ApiResponseComicCopyWith(
          _$_ApiResponseComic value, $Res Function(_$_ApiResponseComic) then) =
      __$$_ApiResponseComicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComicData data});

  @override
  $ComicDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseComicCopyWithImpl<$Res>
    extends _$ApiResponseComicCopyWithImpl<$Res, _$_ApiResponseComic>
    implements _$$_ApiResponseComicCopyWith<$Res> {
  __$$_ApiResponseComicCopyWithImpl(
      _$_ApiResponseComic _value, $Res Function(_$_ApiResponseComic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseComic(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseComic implements _ApiResponseComic {
  const _$_ApiResponseComic({required this.data});

  factory _$_ApiResponseComic.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseComicFromJson(json);

  @override
  final ComicData data;

  @override
  String toString() {
    return 'ApiResponseComic(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseComic &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseComicCopyWith<_$_ApiResponseComic> get copyWith =>
      __$$_ApiResponseComicCopyWithImpl<_$_ApiResponseComic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseComicToJson(
      this,
    );
  }
}

abstract class _ApiResponseComic implements ApiResponseComic {
  const factory _ApiResponseComic({required final ComicData data}) =
      _$_ApiResponseComic;

  factory _ApiResponseComic.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseComic.fromJson;

  @override
  ComicData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseComicCopyWith<_$_ApiResponseComic> get copyWith =>
      throw _privateConstructorUsedError;
}
