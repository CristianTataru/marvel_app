// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_story_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseStorySeries _$ApiResponseStorySeriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseStorySeries.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseStorySeries {
  StorySeriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseStorySeriesCopyWith<ApiResponseStorySeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseStorySeriesCopyWith<$Res> {
  factory $ApiResponseStorySeriesCopyWith(ApiResponseStorySeries value,
          $Res Function(ApiResponseStorySeries) then) =
      _$ApiResponseStorySeriesCopyWithImpl<$Res, ApiResponseStorySeries>;
  @useResult
  $Res call({StorySeriesData data});

  $StorySeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseStorySeriesCopyWithImpl<$Res,
        $Val extends ApiResponseStorySeries>
    implements $ApiResponseStorySeriesCopyWith<$Res> {
  _$ApiResponseStorySeriesCopyWithImpl(this._value, this._then);

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
              as StorySeriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorySeriesDataCopyWith<$Res> get data {
    return $StorySeriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseStorySeriesCopyWith<$Res>
    implements $ApiResponseStorySeriesCopyWith<$Res> {
  factory _$$_ApiResponseStorySeriesCopyWith(_$_ApiResponseStorySeries value,
          $Res Function(_$_ApiResponseStorySeries) then) =
      __$$_ApiResponseStorySeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StorySeriesData data});

  @override
  $StorySeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseStorySeriesCopyWithImpl<$Res>
    extends _$ApiResponseStorySeriesCopyWithImpl<$Res,
        _$_ApiResponseStorySeries>
    implements _$$_ApiResponseStorySeriesCopyWith<$Res> {
  __$$_ApiResponseStorySeriesCopyWithImpl(_$_ApiResponseStorySeries _value,
      $Res Function(_$_ApiResponseStorySeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseStorySeries(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StorySeriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseStorySeries implements _ApiResponseStorySeries {
  const _$_ApiResponseStorySeries({required this.data});

  factory _$_ApiResponseStorySeries.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseStorySeriesFromJson(json);

  @override
  final StorySeriesData data;

  @override
  String toString() {
    return 'ApiResponseStorySeries(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseStorySeries &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseStorySeriesCopyWith<_$_ApiResponseStorySeries> get copyWith =>
      __$$_ApiResponseStorySeriesCopyWithImpl<_$_ApiResponseStorySeries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseStorySeriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseStorySeries implements ApiResponseStorySeries {
  const factory _ApiResponseStorySeries({required final StorySeriesData data}) =
      _$_ApiResponseStorySeries;

  factory _ApiResponseStorySeries.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseStorySeries.fromJson;

  @override
  StorySeriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseStorySeriesCopyWith<_$_ApiResponseStorySeries> get copyWith =>
      throw _privateConstructorUsedError;
}
