// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseStory _$ApiResponseStoryFromJson(Map<String, dynamic> json) {
  return _ApiResponseStory.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseStory {
  StoryData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseStoryCopyWith<ApiResponseStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseStoryCopyWith<$Res> {
  factory $ApiResponseStoryCopyWith(
          ApiResponseStory value, $Res Function(ApiResponseStory) then) =
      _$ApiResponseStoryCopyWithImpl<$Res, ApiResponseStory>;
  @useResult
  $Res call({StoryData data});

  $StoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseStoryCopyWithImpl<$Res, $Val extends ApiResponseStory>
    implements $ApiResponseStoryCopyWith<$Res> {
  _$ApiResponseStoryCopyWithImpl(this._value, this._then);

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
              as StoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryDataCopyWith<$Res> get data {
    return $StoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseStoryCopyWith<$Res>
    implements $ApiResponseStoryCopyWith<$Res> {
  factory _$$_ApiResponseStoryCopyWith(
          _$_ApiResponseStory value, $Res Function(_$_ApiResponseStory) then) =
      __$$_ApiResponseStoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoryData data});

  @override
  $StoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseStoryCopyWithImpl<$Res>
    extends _$ApiResponseStoryCopyWithImpl<$Res, _$_ApiResponseStory>
    implements _$$_ApiResponseStoryCopyWith<$Res> {
  __$$_ApiResponseStoryCopyWithImpl(
      _$_ApiResponseStory _value, $Res Function(_$_ApiResponseStory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseStory(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseStory implements _ApiResponseStory {
  const _$_ApiResponseStory({required this.data});

  factory _$_ApiResponseStory.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseStoryFromJson(json);

  @override
  final StoryData data;

  @override
  String toString() {
    return 'ApiResponseStory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseStory &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseStoryCopyWith<_$_ApiResponseStory> get copyWith =>
      __$$_ApiResponseStoryCopyWithImpl<_$_ApiResponseStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseStoryToJson(
      this,
    );
  }
}

abstract class _ApiResponseStory implements ApiResponseStory {
  const factory _ApiResponseStory({required final StoryData data}) =
      _$_ApiResponseStory;

  factory _ApiResponseStory.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseStory.fromJson;

  @override
  StoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseStoryCopyWith<_$_ApiResponseStory> get copyWith =>
      throw _privateConstructorUsedError;
}
