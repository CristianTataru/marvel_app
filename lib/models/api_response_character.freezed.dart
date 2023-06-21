// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCharacter _$ApiResponseCharacterFromJson(Map<String, dynamic> json) {
  return _ApiResponseCharacter.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCharacter {
  CharacterData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCharacterCopyWith<ApiResponseCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCharacterCopyWith<$Res> {
  factory $ApiResponseCharacterCopyWith(ApiResponseCharacter value,
          $Res Function(ApiResponseCharacter) then) =
      _$ApiResponseCharacterCopyWithImpl<$Res, ApiResponseCharacter>;
  @useResult
  $Res call({CharacterData data});

  $CharacterDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCharacterCopyWithImpl<$Res,
        $Val extends ApiResponseCharacter>
    implements $ApiResponseCharacterCopyWith<$Res> {
  _$ApiResponseCharacterCopyWithImpl(this._value, this._then);

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
              as CharacterData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDataCopyWith<$Res> get data {
    return $CharacterDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCharacterCopyWith<$Res>
    implements $ApiResponseCharacterCopyWith<$Res> {
  factory _$$_ApiResponseCharacterCopyWith(_$_ApiResponseCharacter value,
          $Res Function(_$_ApiResponseCharacter) then) =
      __$$_ApiResponseCharacterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterData data});

  @override
  $CharacterDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCharacterCopyWithImpl<$Res>
    extends _$ApiResponseCharacterCopyWithImpl<$Res, _$_ApiResponseCharacter>
    implements _$$_ApiResponseCharacterCopyWith<$Res> {
  __$$_ApiResponseCharacterCopyWithImpl(_$_ApiResponseCharacter _value,
      $Res Function(_$_ApiResponseCharacter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ApiResponseCharacter(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharacterData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCharacter implements _ApiResponseCharacter {
  const _$_ApiResponseCharacter({required this.data});

  factory _$_ApiResponseCharacter.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCharacterFromJson(json);

  @override
  final CharacterData data;

  @override
  String toString() {
    return 'ApiResponseCharacter(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCharacter &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCharacterCopyWith<_$_ApiResponseCharacter> get copyWith =>
      __$$_ApiResponseCharacterCopyWithImpl<_$_ApiResponseCharacter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCharacterToJson(
      this,
    );
  }
}

abstract class _ApiResponseCharacter implements ApiResponseCharacter {
  const factory _ApiResponseCharacter({required final CharacterData data}) =
      _$_ApiResponseCharacter;

  factory _ApiResponseCharacter.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCharacter.fromJson;

  @override
  CharacterData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCharacterCopyWith<_$_ApiResponseCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}
