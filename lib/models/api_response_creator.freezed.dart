// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_creator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCreator _$ApiResponseCreatorFromJson(Map<String, dynamic> json) {
  return _ApiResponseCreator.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCreator {
  CreatorData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCreatorCopyWith<ApiResponseCreator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCreatorCopyWith<$Res> {
  factory $ApiResponseCreatorCopyWith(
          ApiResponseCreator value, $Res Function(ApiResponseCreator) then) =
      _$ApiResponseCreatorCopyWithImpl<$Res, ApiResponseCreator>;
  @useResult
  $Res call({CreatorData data});

  $CreatorDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCreatorCopyWithImpl<$Res, $Val extends ApiResponseCreator>
    implements $ApiResponseCreatorCopyWith<$Res> {
  _$ApiResponseCreatorCopyWithImpl(this._value, this._then);

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
              as CreatorData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorDataCopyWith<$Res> get data {
    return $CreatorDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCreatorCopyWith<$Res>
    implements $ApiResponseCreatorCopyWith<$Res> {
  factory _$$_ApiResponseCreatorCopyWith(_$_ApiResponseCreator value,
          $Res Function(_$_ApiResponseCreator) then) =
      __$$_ApiResponseCreatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatorData data});

  @override
  $CreatorDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCreatorCopyWithImpl<$Res>
    extends _$ApiResponseCreatorCopyWithImpl<$Res, _$_ApiResponseCreator>
    implements _$$_ApiResponseCreatorCopyWith<$Res> {
  __$$_ApiResponseCreatorCopyWithImpl(
      _$_ApiResponseCreator _value, $Res Function(_$_ApiResponseCreator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCreator(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreatorData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCreator implements _ApiResponseCreator {
  const _$_ApiResponseCreator({required this.data});

  factory _$_ApiResponseCreator.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCreatorFromJson(json);

  @override
  final CreatorData data;

  @override
  String toString() {
    return 'ApiResponseCreator(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCreator &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCreatorCopyWith<_$_ApiResponseCreator> get copyWith =>
      __$$_ApiResponseCreatorCopyWithImpl<_$_ApiResponseCreator>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCreatorToJson(
      this,
    );
  }
}

abstract class _ApiResponseCreator implements ApiResponseCreator {
  const factory _ApiResponseCreator({required final CreatorData data}) =
      _$_ApiResponseCreator;

  factory _ApiResponseCreator.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCreator.fromJson;

  @override
  CreatorData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCreatorCopyWith<_$_ApiResponseCreator> get copyWith =>
      throw _privateConstructorUsedError;
}
