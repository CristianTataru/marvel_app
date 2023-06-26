// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_comic_stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseComicStories _$ApiResponseComicStoriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseComicStories.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseComicStories {
  ComicStoriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseComicStoriesCopyWith<ApiResponseComicStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseComicStoriesCopyWith<$Res> {
  factory $ApiResponseComicStoriesCopyWith(ApiResponseComicStories value,
          $Res Function(ApiResponseComicStories) then) =
      _$ApiResponseComicStoriesCopyWithImpl<$Res, ApiResponseComicStories>;
  @useResult
  $Res call({ComicStoriesData data});

  $ComicStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseComicStoriesCopyWithImpl<$Res,
        $Val extends ApiResponseComicStories>
    implements $ApiResponseComicStoriesCopyWith<$Res> {
  _$ApiResponseComicStoriesCopyWithImpl(this._value, this._then);

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
              as ComicStoriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicStoriesDataCopyWith<$Res> get data {
    return $ComicStoriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseComicStoriesCopyWith<$Res>
    implements $ApiResponseComicStoriesCopyWith<$Res> {
  factory _$$_ApiResponseComicStoriesCopyWith(_$_ApiResponseComicStories value,
          $Res Function(_$_ApiResponseComicStories) then) =
      __$$_ApiResponseComicStoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ComicStoriesData data});

  @override
  $ComicStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseComicStoriesCopyWithImpl<$Res>
    extends _$ApiResponseComicStoriesCopyWithImpl<$Res,
        _$_ApiResponseComicStories>
    implements _$$_ApiResponseComicStoriesCopyWith<$Res> {
  __$$_ApiResponseComicStoriesCopyWithImpl(_$_ApiResponseComicStories _value,
      $Res Function(_$_ApiResponseComicStories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseComicStories(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicStoriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseComicStories implements _ApiResponseComicStories {
  const _$_ApiResponseComicStories({required this.data});

  factory _$_ApiResponseComicStories.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseComicStoriesFromJson(json);

  @override
  final ComicStoriesData data;

  @override
  String toString() {
    return 'ApiResponseComicStories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseComicStories &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseComicStoriesCopyWith<_$_ApiResponseComicStories>
      get copyWith =>
          __$$_ApiResponseComicStoriesCopyWithImpl<_$_ApiResponseComicStories>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseComicStoriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseComicStories implements ApiResponseComicStories {
  const factory _ApiResponseComicStories(
      {required final ComicStoriesData data}) = _$_ApiResponseComicStories;

  factory _ApiResponseComicStories.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseComicStories.fromJson;

  @override
  ComicStoriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseComicStoriesCopyWith<_$_ApiResponseComicStories>
      get copyWith => throw _privateConstructorUsedError;
}
