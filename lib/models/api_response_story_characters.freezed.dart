// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_story_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseStoryCharacters _$ApiResponseStoryCharactersFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseStoryCharacters.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseStoryCharacters {
  StoryCharactersData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseStoryCharactersCopyWith<ApiResponseStoryCharacters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseStoryCharactersCopyWith<$Res> {
  factory $ApiResponseStoryCharactersCopyWith(ApiResponseStoryCharacters value,
          $Res Function(ApiResponseStoryCharacters) then) =
      _$ApiResponseStoryCharactersCopyWithImpl<$Res,
          ApiResponseStoryCharacters>;
  @useResult
  $Res call({StoryCharactersData data});

  $StoryCharactersDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseStoryCharactersCopyWithImpl<$Res,
        $Val extends ApiResponseStoryCharacters>
    implements $ApiResponseStoryCharactersCopyWith<$Res> {
  _$ApiResponseStoryCharactersCopyWithImpl(this._value, this._then);

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
              as StoryCharactersData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCharactersDataCopyWith<$Res> get data {
    return $StoryCharactersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseStoryCharactersCopyWith<$Res>
    implements $ApiResponseStoryCharactersCopyWith<$Res> {
  factory _$$_ApiResponseStoryCharactersCopyWith(
          _$_ApiResponseStoryCharacters value,
          $Res Function(_$_ApiResponseStoryCharacters) then) =
      __$$_ApiResponseStoryCharactersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoryCharactersData data});

  @override
  $StoryCharactersDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseStoryCharactersCopyWithImpl<$Res>
    extends _$ApiResponseStoryCharactersCopyWithImpl<$Res,
        _$_ApiResponseStoryCharacters>
    implements _$$_ApiResponseStoryCharactersCopyWith<$Res> {
  __$$_ApiResponseStoryCharactersCopyWithImpl(
      _$_ApiResponseStoryCharacters _value,
      $Res Function(_$_ApiResponseStoryCharacters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseStoryCharacters(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoryCharactersData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseStoryCharacters implements _ApiResponseStoryCharacters {
  const _$_ApiResponseStoryCharacters({required this.data});

  factory _$_ApiResponseStoryCharacters.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseStoryCharactersFromJson(json);

  @override
  final StoryCharactersData data;

  @override
  String toString() {
    return 'ApiResponseStoryCharacters(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseStoryCharacters &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseStoryCharactersCopyWith<_$_ApiResponseStoryCharacters>
      get copyWith => __$$_ApiResponseStoryCharactersCopyWithImpl<
          _$_ApiResponseStoryCharacters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseStoryCharactersToJson(
      this,
    );
  }
}

abstract class _ApiResponseStoryCharacters
    implements ApiResponseStoryCharacters {
  const factory _ApiResponseStoryCharacters(
          {required final StoryCharactersData data}) =
      _$_ApiResponseStoryCharacters;

  factory _ApiResponseStoryCharacters.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseStoryCharacters.fromJson;

  @override
  StoryCharactersData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseStoryCharactersCopyWith<_$_ApiResponseStoryCharacters>
      get copyWith => throw _privateConstructorUsedError;
}
