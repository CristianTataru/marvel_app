// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_character_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCharacterSeries _$ApiResponseCharacterSeriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCharacterSeries.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCharacterSeries {
  CharacterSeriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCharacterSeriesCopyWith<ApiResponseCharacterSeries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCharacterSeriesCopyWith<$Res> {
  factory $ApiResponseCharacterSeriesCopyWith(ApiResponseCharacterSeries value,
          $Res Function(ApiResponseCharacterSeries) then) =
      _$ApiResponseCharacterSeriesCopyWithImpl<$Res,
          ApiResponseCharacterSeries>;
  @useResult
  $Res call({CharacterSeriesData data});

  $CharacterSeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCharacterSeriesCopyWithImpl<$Res,
        $Val extends ApiResponseCharacterSeries>
    implements $ApiResponseCharacterSeriesCopyWith<$Res> {
  _$ApiResponseCharacterSeriesCopyWithImpl(this._value, this._then);

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
              as CharacterSeriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterSeriesDataCopyWith<$Res> get data {
    return $CharacterSeriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCharacterSeriesCopyWith<$Res>
    implements $ApiResponseCharacterSeriesCopyWith<$Res> {
  factory _$$_ApiResponseCharacterSeriesCopyWith(
          _$_ApiResponseCharacterSeries value,
          $Res Function(_$_ApiResponseCharacterSeries) then) =
      __$$_ApiResponseCharacterSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterSeriesData data});

  @override
  $CharacterSeriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCharacterSeriesCopyWithImpl<$Res>
    extends _$ApiResponseCharacterSeriesCopyWithImpl<$Res,
        _$_ApiResponseCharacterSeries>
    implements _$$_ApiResponseCharacterSeriesCopyWith<$Res> {
  __$$_ApiResponseCharacterSeriesCopyWithImpl(
      _$_ApiResponseCharacterSeries _value,
      $Res Function(_$_ApiResponseCharacterSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCharacterSeries(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterSeriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCharacterSeries implements _ApiResponseCharacterSeries {
  const _$_ApiResponseCharacterSeries({required this.data});

  factory _$_ApiResponseCharacterSeries.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCharacterSeriesFromJson(json);

  @override
  final CharacterSeriesData data;

  @override
  String toString() {
    return 'ApiResponseCharacterSeries(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCharacterSeries &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCharacterSeriesCopyWith<_$_ApiResponseCharacterSeries>
      get copyWith => __$$_ApiResponseCharacterSeriesCopyWithImpl<
          _$_ApiResponseCharacterSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCharacterSeriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseCharacterSeries
    implements ApiResponseCharacterSeries {
  const factory _ApiResponseCharacterSeries(
          {required final CharacterSeriesData data}) =
      _$_ApiResponseCharacterSeries;

  factory _ApiResponseCharacterSeries.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCharacterSeries.fromJson;

  @override
  CharacterSeriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCharacterSeriesCopyWith<_$_ApiResponseCharacterSeries>
      get copyWith => throw _privateConstructorUsedError;
}
