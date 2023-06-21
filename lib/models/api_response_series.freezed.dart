// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseSeries _$ApiResponseSeriesFromJson(Map<String, dynamic> json) {
  return _ApiResponseSeries.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseSeries {
  SeriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseSeriesCopyWith<ApiResponseSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseSeriesCopyWith<$Res> {
  factory $ApiResponseSeriesCopyWith(
          ApiResponseSeries value, $Res Function(ApiResponseSeries) then) =
      _$ApiResponseSeriesCopyWithImpl<$Res, ApiResponseSeries>;
  @useResult
  $Res call({SeriesData data});

  $SeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseSeriesCopyWithImpl<$Res, $Val extends ApiResponseSeries>
    implements $ApiResponseSeriesCopyWith<$Res> {
  _$ApiResponseSeriesCopyWithImpl(this._value, this._then);

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
              as SeriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesDataCopyWith<$Res> get data {
    return $SeriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseSeriesCopyWith<$Res>
    implements $ApiResponseSeriesCopyWith<$Res> {
  factory _$$_ApiResponseSeriesCopyWith(_$_ApiResponseSeries value,
          $Res Function(_$_ApiResponseSeries) then) =
      __$$_ApiResponseSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeriesData data});

  @override
  $SeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseSeriesCopyWithImpl<$Res>
    extends _$ApiResponseSeriesCopyWithImpl<$Res, _$_ApiResponseSeries>
    implements _$$_ApiResponseSeriesCopyWith<$Res> {
  __$$_ApiResponseSeriesCopyWithImpl(
      _$_ApiResponseSeries _value, $Res Function(_$_ApiResponseSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseSeries(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseSeries implements _ApiResponseSeries {
  const _$_ApiResponseSeries({required this.data});

  factory _$_ApiResponseSeries.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseSeriesFromJson(json);

  @override
  final SeriesData data;

  @override
  String toString() {
    return 'ApiResponseSeries(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseSeries &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseSeriesCopyWith<_$_ApiResponseSeries> get copyWith =>
      __$$_ApiResponseSeriesCopyWithImpl<_$_ApiResponseSeries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseSeriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseSeries implements ApiResponseSeries {
  const factory _ApiResponseSeries({required final SeriesData data}) =
      _$_ApiResponseSeries;

  factory _ApiResponseSeries.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseSeries.fromJson;

  @override
  SeriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseSeriesCopyWith<_$_ApiResponseSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
