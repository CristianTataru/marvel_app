// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_story_comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseStoryComics _$ApiResponseStoryComicsFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseStoryComics.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseStoryComics {
  StoryComicsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseStoryComicsCopyWith<ApiResponseStoryComics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseStoryComicsCopyWith<$Res> {
  factory $ApiResponseStoryComicsCopyWith(ApiResponseStoryComics value,
          $Res Function(ApiResponseStoryComics) then) =
      _$ApiResponseStoryComicsCopyWithImpl<$Res, ApiResponseStoryComics>;
  @useResult
  $Res call({StoryComicsData data});

  $StoryComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseStoryComicsCopyWithImpl<$Res,
        $Val extends ApiResponseStoryComics>
    implements $ApiResponseStoryComicsCopyWith<$Res> {
  _$ApiResponseStoryComicsCopyWithImpl(this._value, this._then);

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
              as StoryComicsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryComicsDataCopyWith<$Res> get data {
    return $StoryComicsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseStoryComicsCopyWith<$Res>
    implements $ApiResponseStoryComicsCopyWith<$Res> {
  factory _$$_ApiResponseStoryComicsCopyWith(_$_ApiResponseStoryComics value,
          $Res Function(_$_ApiResponseStoryComics) then) =
      __$$_ApiResponseStoryComicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoryComicsData data});

  @override
  $StoryComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseStoryComicsCopyWithImpl<$Res>
    extends _$ApiResponseStoryComicsCopyWithImpl<$Res,
        _$_ApiResponseStoryComics>
    implements _$$_ApiResponseStoryComicsCopyWith<$Res> {
  __$$_ApiResponseStoryComicsCopyWithImpl(_$_ApiResponseStoryComics _value,
      $Res Function(_$_ApiResponseStoryComics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseStoryComics(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoryComicsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseStoryComics implements _ApiResponseStoryComics {
  const _$_ApiResponseStoryComics({required this.data});

  factory _$_ApiResponseStoryComics.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseStoryComicsFromJson(json);

  @override
  final StoryComicsData data;

  @override
  String toString() {
    return 'ApiResponseStoryComics(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseStoryComics &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseStoryComicsCopyWith<_$_ApiResponseStoryComics> get copyWith =>
      __$$_ApiResponseStoryComicsCopyWithImpl<_$_ApiResponseStoryComics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseStoryComicsToJson(
      this,
    );
  }
}

abstract class _ApiResponseStoryComics implements ApiResponseStoryComics {
  const factory _ApiResponseStoryComics({required final StoryComicsData data}) =
      _$_ApiResponseStoryComics;

  factory _ApiResponseStoryComics.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseStoryComics.fromJson;

  @override
  StoryComicsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseStoryComicsCopyWith<_$_ApiResponseStoryComics> get copyWith =>
      throw _privateConstructorUsedError;
}
