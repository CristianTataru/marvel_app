// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_creator_comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCreatorComic _$ApiResponseCreatorComicFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCreatorComic.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCreatorComic {
  CreatorComicData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCreatorComicCopyWith<ApiResponseCreatorComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCreatorComicCopyWith<$Res> {
  factory $ApiResponseCreatorComicCopyWith(ApiResponseCreatorComic value,
          $Res Function(ApiResponseCreatorComic) then) =
      _$ApiResponseCreatorComicCopyWithImpl<$Res, ApiResponseCreatorComic>;
  @useResult
  $Res call({CreatorComicData data});

  $CreatorComicDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCreatorComicCopyWithImpl<$Res,
        $Val extends ApiResponseCreatorComic>
    implements $ApiResponseCreatorComicCopyWith<$Res> {
  _$ApiResponseCreatorComicCopyWithImpl(this._value, this._then);

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
              as CreatorComicData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorComicDataCopyWith<$Res> get data {
    return $CreatorComicDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCreatorComicCopyWith<$Res>
    implements $ApiResponseCreatorComicCopyWith<$Res> {
  factory _$$_ApiResponseCreatorComicCopyWith(_$_ApiResponseCreatorComic value,
          $Res Function(_$_ApiResponseCreatorComic) then) =
      __$$_ApiResponseCreatorComicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatorComicData data});

  @override
  $CreatorComicDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCreatorComicCopyWithImpl<$Res>
    extends _$ApiResponseCreatorComicCopyWithImpl<$Res,
        _$_ApiResponseCreatorComic>
    implements _$$_ApiResponseCreatorComicCopyWith<$Res> {
  __$$_ApiResponseCreatorComicCopyWithImpl(_$_ApiResponseCreatorComic _value,
      $Res Function(_$_ApiResponseCreatorComic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCreatorComic(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatorComicData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCreatorComic implements _ApiResponseCreatorComic {
  const _$_ApiResponseCreatorComic({required this.data});

  factory _$_ApiResponseCreatorComic.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCreatorComicFromJson(json);

  @override
  final CreatorComicData data;

  @override
  String toString() {
    return 'ApiResponseCreatorComic(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCreatorComic &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCreatorComicCopyWith<_$_ApiResponseCreatorComic>
      get copyWith =>
          __$$_ApiResponseCreatorComicCopyWithImpl<_$_ApiResponseCreatorComic>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCreatorComicToJson(
      this,
    );
  }
}

abstract class _ApiResponseCreatorComic implements ApiResponseCreatorComic {
  const factory _ApiResponseCreatorComic(
      {required final CreatorComicData data}) = _$_ApiResponseCreatorComic;

  factory _ApiResponseCreatorComic.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCreatorComic.fromJson;

  @override
  CreatorComicData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCreatorComicCopyWith<_$_ApiResponseCreatorComic>
      get copyWith => throw _privateConstructorUsedError;
}
