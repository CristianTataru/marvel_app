// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_creator_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCreatorSeries _$ApiResponseCreatorSeriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCreatorSeries.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCreatorSeries {
  CreatorSeriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCreatorSeriesCopyWith<ApiResponseCreatorSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCreatorSeriesCopyWith<$Res> {
  factory $ApiResponseCreatorSeriesCopyWith(ApiResponseCreatorSeries value,
          $Res Function(ApiResponseCreatorSeries) then) =
      _$ApiResponseCreatorSeriesCopyWithImpl<$Res, ApiResponseCreatorSeries>;
  @useResult
  $Res call({CreatorSeriesData data});

  $CreatorSeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCreatorSeriesCopyWithImpl<$Res,
        $Val extends ApiResponseCreatorSeries>
    implements $ApiResponseCreatorSeriesCopyWith<$Res> {
  _$ApiResponseCreatorSeriesCopyWithImpl(this._value, this._then);

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
              as CreatorSeriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorSeriesDataCopyWith<$Res> get data {
    return $CreatorSeriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCreatorSeriesCopyWith<$Res>
    implements $ApiResponseCreatorSeriesCopyWith<$Res> {
  factory _$$_ApiResponseCreatorSeriesCopyWith(
          _$_ApiResponseCreatorSeries value,
          $Res Function(_$_ApiResponseCreatorSeries) then) =
      __$$_ApiResponseCreatorSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatorSeriesData data});

  @override
  $CreatorSeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCreatorSeriesCopyWithImpl<$Res>
    extends _$ApiResponseCreatorSeriesCopyWithImpl<$Res,
        _$_ApiResponseCreatorSeries>
    implements _$$_ApiResponseCreatorSeriesCopyWith<$Res> {
  __$$_ApiResponseCreatorSeriesCopyWithImpl(_$_ApiResponseCreatorSeries _value,
      $Res Function(_$_ApiResponseCreatorSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCreatorSeries(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatorSeriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCreatorSeries implements _ApiResponseCreatorSeries {
  const _$_ApiResponseCreatorSeries({required this.data});

  factory _$_ApiResponseCreatorSeries.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCreatorSeriesFromJson(json);

  @override
  final CreatorSeriesData data;

  @override
  String toString() {
    return 'ApiResponseCreatorSeries(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCreatorSeries &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCreatorSeriesCopyWith<_$_ApiResponseCreatorSeries>
      get copyWith => __$$_ApiResponseCreatorSeriesCopyWithImpl<
          _$_ApiResponseCreatorSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCreatorSeriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseCreatorSeries implements ApiResponseCreatorSeries {
  const factory _ApiResponseCreatorSeries(
      {required final CreatorSeriesData data}) = _$_ApiResponseCreatorSeries;

  factory _ApiResponseCreatorSeries.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCreatorSeries.fromJson;

  @override
  CreatorSeriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCreatorSeriesCopyWith<_$_ApiResponseCreatorSeries>
      get copyWith => throw _privateConstructorUsedError;
}
