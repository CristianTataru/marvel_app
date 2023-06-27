// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_story_creators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseStoryCreators _$ApiResponseStoryCreatorsFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseStoryCreators.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseStoryCreators {
  StoryCreatorsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseStoryCreatorsCopyWith<ApiResponseStoryCreators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseStoryCreatorsCopyWith<$Res> {
  factory $ApiResponseStoryCreatorsCopyWith(ApiResponseStoryCreators value,
          $Res Function(ApiResponseStoryCreators) then) =
      _$ApiResponseStoryCreatorsCopyWithImpl<$Res, ApiResponseStoryCreators>;
  @useResult
  $Res call({StoryCreatorsData data});

  $StoryCreatorsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseStoryCreatorsCopyWithImpl<$Res,
        $Val extends ApiResponseStoryCreators>
    implements $ApiResponseStoryCreatorsCopyWith<$Res> {
  _$ApiResponseStoryCreatorsCopyWithImpl(this._value, this._then);

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
              as StoryCreatorsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCreatorsDataCopyWith<$Res> get data {
    return $StoryCreatorsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseStoryCreatorsCopyWith<$Res>
    implements $ApiResponseStoryCreatorsCopyWith<$Res> {
  factory _$$_ApiResponseStoryCreatorsCopyWith(
          _$_ApiResponseStoryCreators value,
          $Res Function(_$_ApiResponseStoryCreators) then) =
      __$$_ApiResponseStoryCreatorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoryCreatorsData data});

  @override
  $StoryCreatorsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseStoryCreatorsCopyWithImpl<$Res>
    extends _$ApiResponseStoryCreatorsCopyWithImpl<$Res,
        _$_ApiResponseStoryCreators>
    implements _$$_ApiResponseStoryCreatorsCopyWith<$Res> {
  __$$_ApiResponseStoryCreatorsCopyWithImpl(_$_ApiResponseStoryCreators _value,
      $Res Function(_$_ApiResponseStoryCreators) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseStoryCreators(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoryCreatorsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseStoryCreators implements _ApiResponseStoryCreators {
  const _$_ApiResponseStoryCreators({required this.data});

  factory _$_ApiResponseStoryCreators.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseStoryCreatorsFromJson(json);

  @override
  final StoryCreatorsData data;

  @override
  String toString() {
    return 'ApiResponseStoryCreators(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseStoryCreators &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseStoryCreatorsCopyWith<_$_ApiResponseStoryCreators>
      get copyWith => __$$_ApiResponseStoryCreatorsCopyWithImpl<
          _$_ApiResponseStoryCreators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseStoryCreatorsToJson(
      this,
    );
  }
}

abstract class _ApiResponseStoryCreators implements ApiResponseStoryCreators {
  const factory _ApiResponseStoryCreators(
      {required final StoryCreatorsData data}) = _$_ApiResponseStoryCreators;

  factory _ApiResponseStoryCreators.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseStoryCreators.fromJson;

  @override
  StoryCreatorsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseStoryCreatorsCopyWith<_$_ApiResponseStoryCreators>
      get copyWith => throw _privateConstructorUsedError;
}
