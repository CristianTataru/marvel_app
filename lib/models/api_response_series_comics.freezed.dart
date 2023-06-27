// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_series_comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseSeriesComics _$ApiResponseSeriesComicsFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseSeriesComics.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseSeriesComics {
  SeriesComicsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseSeriesComicsCopyWith<ApiResponseSeriesComics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseSeriesComicsCopyWith<$Res> {
  factory $ApiResponseSeriesComicsCopyWith(ApiResponseSeriesComics value,
          $Res Function(ApiResponseSeriesComics) then) =
      _$ApiResponseSeriesComicsCopyWithImpl<$Res, ApiResponseSeriesComics>;
  @useResult
  $Res call({SeriesComicsData data});

  $SeriesComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseSeriesComicsCopyWithImpl<$Res,
        $Val extends ApiResponseSeriesComics>
    implements $ApiResponseSeriesComicsCopyWith<$Res> {
  _$ApiResponseSeriesComicsCopyWithImpl(this._value, this._then);

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
              as SeriesComicsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesComicsDataCopyWith<$Res> get data {
    return $SeriesComicsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseSeriesComicsCopyWith<$Res>
    implements $ApiResponseSeriesComicsCopyWith<$Res> {
  factory _$$_ApiResponseSeriesComicsCopyWith(_$_ApiResponseSeriesComics value,
          $Res Function(_$_ApiResponseSeriesComics) then) =
      __$$_ApiResponseSeriesComicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeriesComicsData data});

  @override
  $SeriesComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseSeriesComicsCopyWithImpl<$Res>
    extends _$ApiResponseSeriesComicsCopyWithImpl<$Res,
        _$_ApiResponseSeriesComics>
    implements _$$_ApiResponseSeriesComicsCopyWith<$Res> {
  __$$_ApiResponseSeriesComicsCopyWithImpl(_$_ApiResponseSeriesComics _value,
      $Res Function(_$_ApiResponseSeriesComics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseSeriesComics(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeriesComicsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseSeriesComics implements _ApiResponseSeriesComics {
  const _$_ApiResponseSeriesComics({required this.data});

  factory _$_ApiResponseSeriesComics.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseSeriesComicsFromJson(json);

  @override
  final SeriesComicsData data;

  @override
  String toString() {
    return 'ApiResponseSeriesComics(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseSeriesComics &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseSeriesComicsCopyWith<_$_ApiResponseSeriesComics>
      get copyWith =>
          __$$_ApiResponseSeriesComicsCopyWithImpl<_$_ApiResponseSeriesComics>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseSeriesComicsToJson(
      this,
    );
  }
}

abstract class _ApiResponseSeriesComics implements ApiResponseSeriesComics {
  const factory _ApiResponseSeriesComics(
      {required final SeriesComicsData data}) = _$_ApiResponseSeriesComics;

  factory _ApiResponseSeriesComics.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseSeriesComics.fromJson;

  @override
  SeriesComicsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseSeriesComicsCopyWith<_$_ApiResponseSeriesComics>
      get copyWith => throw _privateConstructorUsedError;
}
