// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_creator_stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCreatorStories _$ApiResponseCreatorStoriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCreatorStories.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCreatorStories {
  CreatorStoriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCreatorStoriesCopyWith<ApiResponseCreatorStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCreatorStoriesCopyWith<$Res> {
  factory $ApiResponseCreatorStoriesCopyWith(ApiResponseCreatorStories value,
          $Res Function(ApiResponseCreatorStories) then) =
      _$ApiResponseCreatorStoriesCopyWithImpl<$Res, ApiResponseCreatorStories>;
  @useResult
  $Res call({CreatorStoriesData data});

  $CreatorStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCreatorStoriesCopyWithImpl<$Res,
        $Val extends ApiResponseCreatorStories>
    implements $ApiResponseCreatorStoriesCopyWith<$Res> {
  _$ApiResponseCreatorStoriesCopyWithImpl(this._value, this._then);

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
              as CreatorStoriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorStoriesDataCopyWith<$Res> get data {
    return $CreatorStoriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCreatorStoriesCopyWith<$Res>
    implements $ApiResponseCreatorStoriesCopyWith<$Res> {
  factory _$$_ApiResponseCreatorStoriesCopyWith(
          _$_ApiResponseCreatorStories value,
          $Res Function(_$_ApiResponseCreatorStories) then) =
      __$$_ApiResponseCreatorStoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatorStoriesData data});

  @override
  $CreatorStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCreatorStoriesCopyWithImpl<$Res>
    extends _$ApiResponseCreatorStoriesCopyWithImpl<$Res,
        _$_ApiResponseCreatorStories>
    implements _$$_ApiResponseCreatorStoriesCopyWith<$Res> {
  __$$_ApiResponseCreatorStoriesCopyWithImpl(
      _$_ApiResponseCreatorStories _value,
      $Res Function(_$_ApiResponseCreatorStories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCreatorStories(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatorStoriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCreatorStories implements _ApiResponseCreatorStories {
  const _$_ApiResponseCreatorStories({required this.data});

  factory _$_ApiResponseCreatorStories.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCreatorStoriesFromJson(json);

  @override
  final CreatorStoriesData data;

  @override
  String toString() {
    return 'ApiResponseCreatorStories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCreatorStories &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCreatorStoriesCopyWith<_$_ApiResponseCreatorStories>
      get copyWith => __$$_ApiResponseCreatorStoriesCopyWithImpl<
          _$_ApiResponseCreatorStories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCreatorStoriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseCreatorStories implements ApiResponseCreatorStories {
  const factory _ApiResponseCreatorStories(
      {required final CreatorStoriesData data}) = _$_ApiResponseCreatorStories;

  factory _ApiResponseCreatorStories.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCreatorStories.fromJson;

  @override
  CreatorStoriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCreatorStoriesCopyWith<_$_ApiResponseCreatorStories>
      get copyWith => throw _privateConstructorUsedError;
}
