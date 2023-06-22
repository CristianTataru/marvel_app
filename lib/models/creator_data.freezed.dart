// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorData _$CreatorDataFromJson(Map<String, dynamic> json) {
  return _CreatorData.fromJson(json);
}

/// @nodoc
mixin _$CreatorData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Creator> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorDataCopyWith<CreatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDataCopyWith<$Res> {
  factory $CreatorDataCopyWith(
          CreatorData value, $Res Function(CreatorData) then) =
      _$CreatorDataCopyWithImpl<$Res, CreatorData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Creator> results});
}

/// @nodoc
class _$CreatorDataCopyWithImpl<$Res, $Val extends CreatorData>
    implements $CreatorDataCopyWith<$Res> {
  _$CreatorDataCopyWithImpl(this._value, this._then);

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
              as List<Creator>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatorDataCopyWith<$Res>
    implements $CreatorDataCopyWith<$Res> {
  factory _$$_CreatorDataCopyWith(
          _$_CreatorData value, $Res Function(_$_CreatorData) then) =
      __$$_CreatorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Creator> results});
}

/// @nodoc
class __$$_CreatorDataCopyWithImpl<$Res>
    extends _$CreatorDataCopyWithImpl<$Res, _$_CreatorData>
    implements _$$_CreatorDataCopyWith<$Res> {
  __$$_CreatorDataCopyWithImpl(
      _$_CreatorData _value, $Res Function(_$_CreatorData) _then)
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
    return _then(_$_CreatorData(
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
              as List<Creator>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorData implements _CreatorData {
  const _$_CreatorData(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Creator> results})
      : _results = results;

  factory _$_CreatorData.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorDataFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Creator> _results;
  @override
  List<Creator> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CreatorData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorData &&
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
  _$$_CreatorDataCopyWith<_$_CreatorData> get copyWith =>
      __$$_CreatorDataCopyWithImpl<_$_CreatorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorDataToJson(
      this,
    );
  }
}

abstract class _CreatorData implements CreatorData {
  const factory _CreatorData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Creator> results}) = _$_CreatorData;

  factory _CreatorData.fromJson(Map<String, dynamic> json) =
      _$_CreatorData.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Creator> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorDataCopyWith<_$_CreatorData> get copyWith =>
      throw _privateConstructorUsedError;
}
