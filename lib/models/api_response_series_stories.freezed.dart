// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_series_stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseSeriesStories _$ApiResponseSeriesStoriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseSeriesStories.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseSeriesStories {
  SeriesStoriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseSeriesStoriesCopyWith<ApiResponseSeriesStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseSeriesStoriesCopyWith<$Res> {
  factory $ApiResponseSeriesStoriesCopyWith(ApiResponseSeriesStories value,
          $Res Function(ApiResponseSeriesStories) then) =
      _$ApiResponseSeriesStoriesCopyWithImpl<$Res, ApiResponseSeriesStories>;
  @useResult
  $Res call({SeriesStoriesData data});

  $SeriesStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseSeriesStoriesCopyWithImpl<$Res,
        $Val extends ApiResponseSeriesStories>
    implements $ApiResponseSeriesStoriesCopyWith<$Res> {
  _$ApiResponseSeriesStoriesCopyWithImpl(this._value, this._then);

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
              as SeriesStoriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesStoriesDataCopyWith<$Res> get data {
    return $SeriesStoriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseSeriesStoriesCopyWith<$Res>
    implements $ApiResponseSeriesStoriesCopyWith<$Res> {
  factory _$$_ApiResponseSeriesStoriesCopyWith(
          _$_ApiResponseSeriesStories value,
          $Res Function(_$_ApiResponseSeriesStories) then) =
      __$$_ApiResponseSeriesStoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeriesStoriesData data});

  @override
  $SeriesStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseSeriesStoriesCopyWithImpl<$Res>
    extends _$ApiResponseSeriesStoriesCopyWithImpl<$Res,
        _$_ApiResponseSeriesStories>
    implements _$$_ApiResponseSeriesStoriesCopyWith<$Res> {
  __$$_ApiResponseSeriesStoriesCopyWithImpl(_$_ApiResponseSeriesStories _value,
      $Res Function(_$_ApiResponseSeriesStories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseSeriesStories(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeriesStoriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseSeriesStories implements _ApiResponseSeriesStories {
  const _$_ApiResponseSeriesStories({required this.data});

  factory _$_ApiResponseSeriesStories.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseSeriesStoriesFromJson(json);

  @override
  final SeriesStoriesData data;

  @override
  String toString() {
    return 'ApiResponseSeriesStories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseSeriesStories &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseSeriesStoriesCopyWith<_$_ApiResponseSeriesStories>
      get copyWith => __$$_ApiResponseSeriesStoriesCopyWithImpl<
          _$_ApiResponseSeriesStories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseSeriesStoriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseSeriesStories implements ApiResponseSeriesStories {
  const factory _ApiResponseSeriesStories(
      {required final SeriesStoriesData data}) = _$_ApiResponseSeriesStories;

  factory _ApiResponseSeriesStories.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseSeriesStories.fromJson;

  @override
  SeriesStoriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseSeriesStoriesCopyWith<_$_ApiResponseSeriesStories>
      get copyWith => throw _privateConstructorUsedError;
}
