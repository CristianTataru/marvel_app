// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_character_stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCharacterStories _$ApiResponseCharacterStoriesFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseCharacterStories.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCharacterStories {
  CharacterStoriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCharacterStoriesCopyWith<ApiResponseCharacterStories>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCharacterStoriesCopyWith<$Res> {
  factory $ApiResponseCharacterStoriesCopyWith(
          ApiResponseCharacterStories value,
          $Res Function(ApiResponseCharacterStories) then) =
      _$ApiResponseCharacterStoriesCopyWithImpl<$Res,
          ApiResponseCharacterStories>;
  @useResult
  $Res call({CharacterStoriesData data});

  $CharacterStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCharacterStoriesCopyWithImpl<$Res,
        $Val extends ApiResponseCharacterStories>
    implements $ApiResponseCharacterStoriesCopyWith<$Res> {
  _$ApiResponseCharacterStoriesCopyWithImpl(this._value, this._then);

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
              as CharacterStoriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterStoriesDataCopyWith<$Res> get data {
    return $CharacterStoriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCharacterStoriesCopyWith<$Res>
    implements $ApiResponseCharacterStoriesCopyWith<$Res> {
  factory _$$_ApiResponseCharacterStoriesCopyWith(
          _$_ApiResponseCharacterStories value,
          $Res Function(_$_ApiResponseCharacterStories) then) =
      __$$_ApiResponseCharacterStoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterStoriesData data});

  @override
  $CharacterStoriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCharacterStoriesCopyWithImpl<$Res>
    extends _$ApiResponseCharacterStoriesCopyWithImpl<$Res,
        _$_ApiResponseCharacterStories>
    implements _$$_ApiResponseCharacterStoriesCopyWith<$Res> {
  __$$_ApiResponseCharacterStoriesCopyWithImpl(
      _$_ApiResponseCharacterStories _value,
      $Res Function(_$_ApiResponseCharacterStories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCharacterStories(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterStoriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCharacterStories implements _ApiResponseCharacterStories {
  const _$_ApiResponseCharacterStories({required this.data});

  factory _$_ApiResponseCharacterStories.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCharacterStoriesFromJson(json);

  @override
  final CharacterStoriesData data;

  @override
  String toString() {
    return 'ApiResponseCharacterStories(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCharacterStories &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCharacterStoriesCopyWith<_$_ApiResponseCharacterStories>
      get copyWith => __$$_ApiResponseCharacterStoriesCopyWithImpl<
          _$_ApiResponseCharacterStories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCharacterStoriesToJson(
      this,
    );
  }
}

abstract class _ApiResponseCharacterStories
    implements ApiResponseCharacterStories {
  const factory _ApiResponseCharacterStories(
          {required final CharacterStoriesData data}) =
      _$_ApiResponseCharacterStories;

  factory _ApiResponseCharacterStories.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCharacterStories.fromJson;

  @override
  CharacterStoriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCharacterStoriesCopyWith<_$_ApiResponseCharacterStories>
      get copyWith => throw _privateConstructorUsedError;
}
