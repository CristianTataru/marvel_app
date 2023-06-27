// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_characters_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryCharactersData _$StoryCharactersDataFromJson(Map<String, dynamic> json) {
  return _StoryCharactersData.fromJson(json);
}

/// @nodoc
mixin _$StoryCharactersData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCharactersDataCopyWith<StoryCharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCharactersDataCopyWith<$Res> {
  factory $StoryCharactersDataCopyWith(
          StoryCharactersData value, $Res Function(StoryCharactersData) then) =
      _$StoryCharactersDataCopyWithImpl<$Res, StoryCharactersData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Character> results});
}

/// @nodoc
class _$StoryCharactersDataCopyWithImpl<$Res, $Val extends StoryCharactersData>
    implements $StoryCharactersDataCopyWith<$Res> {
  _$StoryCharactersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoryCharactersDataCopyWith<$Res>
    implements $StoryCharactersDataCopyWith<$Res> {
  factory _$$_StoryCharactersDataCopyWith(_$_StoryCharactersData value,
          $Res Function(_$_StoryCharactersData) then) =
      __$$_StoryCharactersDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Character> results});
}

/// @nodoc
class __$$_StoryCharactersDataCopyWithImpl<$Res>
    extends _$StoryCharactersDataCopyWithImpl<$Res, _$_StoryCharactersData>
    implements _$$_StoryCharactersDataCopyWith<$Res> {
  __$$_StoryCharactersDataCopyWithImpl(_$_StoryCharactersData _value,
      $Res Function(_$_StoryCharactersData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$_StoryCharactersData(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryCharactersData implements _StoryCharactersData {
  const _$_StoryCharactersData(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Character> results})
      : _results = results;

  factory _$_StoryCharactersData.fromJson(Map<String, dynamic> json) =>
      _$$_StoryCharactersDataFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Character> _results;
  @override
  List<Character> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'StoryCharactersData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryCharactersData &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryCharactersDataCopyWith<_$_StoryCharactersData> get copyWith =>
      __$$_StoryCharactersDataCopyWithImpl<_$_StoryCharactersData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryCharactersDataToJson(
      this,
    );
  }
}

abstract class _StoryCharactersData implements StoryCharactersData {
  const factory _StoryCharactersData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Character> results}) = _$_StoryCharactersData;

  factory _StoryCharactersData.fromJson(Map<String, dynamic> json) =
      _$_StoryCharactersData.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$_StoryCharactersDataCopyWith<_$_StoryCharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}