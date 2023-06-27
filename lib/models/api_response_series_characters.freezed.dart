// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_series_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseSeriesCharacters _$ApiResponseSeriesCharactersFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseSeriesCharacters.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseSeriesCharacters {
  SeriesCharactersData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseSeriesCharactersCopyWith<ApiResponseSeriesCharacters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseSeriesCharactersCopyWith<$Res> {
  factory $ApiResponseSeriesCharactersCopyWith(
          ApiResponseSeriesCharacters value,
          $Res Function(ApiResponseSeriesCharacters) then) =
      _$ApiResponseSeriesCharactersCopyWithImpl<$Res,
          ApiResponseSeriesCharacters>;
  @useResult
  $Res call({SeriesCharactersData data});

  $SeriesCharactersDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseSeriesCharactersCopyWithImpl<$Res,
        $Val extends ApiResponseSeriesCharacters>
    implements $ApiResponseSeriesCharactersCopyWith<$Res> {
  _$ApiResponseSeriesCharactersCopyWithImpl(this._value, this._then);

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
              as SeriesCharactersData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCharactersDataCopyWith<$Res> get data {
    return $SeriesCharactersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseSeriesCharactersCopyWith<$Res>
    implements $ApiResponseSeriesCharactersCopyWith<$Res> {
  factory _$$_ApiResponseSeriesCharactersCopyWith(
          _$_ApiResponseSeriesCharacters value,
          $Res Function(_$_ApiResponseSeriesCharacters) then) =
      __$$_ApiResponseSeriesCharactersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeriesCharactersData data});

  @override
  $SeriesCharactersDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseSeriesCharactersCopyWithImpl<$Res>
    extends _$ApiResponseSeriesCharactersCopyWithImpl<$Res,
        _$_ApiResponseSeriesCharacters>
    implements _$$_ApiResponseSeriesCharactersCopyWith<$Res> {
  __$$_ApiResponseSeriesCharactersCopyWithImpl(
      _$_ApiResponseSeriesCharacters _value,
      $Res Function(_$_ApiResponseSeriesCharacters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseSeriesCharacters(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SeriesCharactersData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseSeriesCharacters implements _ApiResponseSeriesCharacters {
  const _$_ApiResponseSeriesCharacters({required this.data});

  factory _$_ApiResponseSeriesCharacters.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseSeriesCharactersFromJson(json);

  @override
  final SeriesCharactersData data;

  @override
  String toString() {
    return 'ApiResponseSeriesCharacters(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseSeriesCharacters &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseSeriesCharactersCopyWith<_$_ApiResponseSeriesCharacters>
      get copyWith => __$$_ApiResponseSeriesCharactersCopyWithImpl<
          _$_ApiResponseSeriesCharacters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseSeriesCharactersToJson(
      this,
    );
  }
}

abstract class _ApiResponseSeriesCharacters
    implements ApiResponseSeriesCharacters {
  const factory _ApiResponseSeriesCharacters(
          {required final SeriesCharactersData data}) =
      _$_ApiResponseSeriesCharacters;

  factory _ApiResponseSeriesCharacters.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseSeriesCharacters.fromJson;

  @override
  SeriesCharactersData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseSeriesCharactersCopyWith<_$_ApiResponseSeriesCharacters>
      get copyWith => throw _privateConstructorUsedError;
}
