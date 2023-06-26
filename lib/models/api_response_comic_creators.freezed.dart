// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_comic_creators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseComicCreators _$ApiResponseComicCreatorsFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseComicCreators.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseComicCreators {
  ComicCreatorsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseComicCreatorsCopyWith<ApiResponseComicCreators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseComicCreatorsCopyWith<$Res> {
  factory $ApiResponseComicCreatorsCopyWith(ApiResponseComicCreators value,
          $Res Function(ApiResponseComicCreators) then) =
      _$ApiResponseComicCreatorsCopyWithImpl<$Res, ApiResponseComicCreators>;
  @useResult
  $Res call({ComicCreatorsData data});

  $ComicCreatorsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseComicCreatorsCopyWithImpl<$Res,
        $Val extends ApiResponseComicCreators>
    implements $ApiResponseComicCreatorsCopyWith<$Res> {
  _$ApiResponseComicCreatorsCopyWithImpl(this._value, this._then);

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
              as ComicCreatorsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicCreatorsDataCopyWith<$Res> get data {
    return $ComicCreatorsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseComicCreatorsCopyWith<$Res>
    implements $ApiResponseComicCreatorsCopyWith<$Res> {
  factory _$$_ApiResponseComicCreatorsCopyWith(
          _$_ApiResponseComicCreators value,
          $Res Function(_$_ApiResponseComicCreators) then) =
      __$$_ApiResponseComicCreatorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComicCreatorsData data});

  @override
  $ComicCreatorsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseComicCreatorsCopyWithImpl<$Res>
    extends _$ApiResponseComicCreatorsCopyWithImpl<$Res,
        _$_ApiResponseComicCreators>
    implements _$$_ApiResponseComicCreatorsCopyWith<$Res> {
  __$$_ApiResponseComicCreatorsCopyWithImpl(_$_ApiResponseComicCreators _value,
      $Res Function(_$_ApiResponseComicCreators) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseComicCreators(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicCreatorsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseComicCreators implements _ApiResponseComicCreators {
  const _$_ApiResponseComicCreators({required this.data});

  factory _$_ApiResponseComicCreators.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseComicCreatorsFromJson(json);

  @override
  final ComicCreatorsData data;

  @override
  String toString() {
    return 'ApiResponseComicCreators(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseComicCreators &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseComicCreatorsCopyWith<_$_ApiResponseComicCreators>
      get copyWith => __$$_ApiResponseComicCreatorsCopyWithImpl<
          _$_ApiResponseComicCreators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseComicCreatorsToJson(
      this,
    );
  }
}

abstract class _ApiResponseComicCreators implements ApiResponseComicCreators {
  const factory _ApiResponseComicCreators(
      {required final ComicCreatorsData data}) = _$_ApiResponseComicCreators;

  factory _ApiResponseComicCreators.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseComicCreators.fromJson;

  @override
  ComicCreatorsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseComicCreatorsCopyWith<_$_ApiResponseComicCreators>
      get copyWith => throw _privateConstructorUsedError;
}
