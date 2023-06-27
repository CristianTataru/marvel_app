// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_creators_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesCreatorsData _$SeriesCreatorsDataFromJson(Map<String, dynamic> json) {
  return _SeriesCreatorsData.fromJson(json);
}

/// @nodoc
mixin _$SeriesCreatorsData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Creator> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCreatorsDataCopyWith<SeriesCreatorsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCreatorsDataCopyWith<$Res> {
  factory $SeriesCreatorsDataCopyWith(
          SeriesCreatorsData value, $Res Function(SeriesCreatorsData) then) =
      _$SeriesCreatorsDataCopyWithImpl<$Res, SeriesCreatorsData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Creator> results});
}

/// @nodoc
class _$SeriesCreatorsDataCopyWithImpl<$Res, $Val extends SeriesCreatorsData>
    implements $SeriesCreatorsDataCopyWith<$Res> {
  _$SeriesCreatorsDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_SeriesCreatorsDataCopyWith<$Res>
    implements $SeriesCreatorsDataCopyWith<$Res> {
  factory _$$_SeriesCreatorsDataCopyWith(_$_SeriesCreatorsData value,
          $Res Function(_$_SeriesCreatorsData) then) =
      __$$_SeriesCreatorsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Creator> results});
}

/// @nodoc
class __$$_SeriesCreatorsDataCopyWithImpl<$Res>
    extends _$SeriesCreatorsDataCopyWithImpl<$Res, _$_SeriesCreatorsData>
    implements _$$_SeriesCreatorsDataCopyWith<$Res> {
  __$$_SeriesCreatorsDataCopyWithImpl(
      _$_SeriesCreatorsData _value, $Res Function(_$_SeriesCreatorsData) _then)
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
    return _then(_$_SeriesCreatorsData(
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
class _$_SeriesCreatorsData implements _SeriesCreatorsData {
  const _$_SeriesCreatorsData(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Creator> results})
      : _results = results;

  factory _$_SeriesCreatorsData.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesCreatorsDataFromJson(json);

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
    return 'SeriesCreatorsData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesCreatorsData &&
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
  _$$_SeriesCreatorsDataCopyWith<_$_SeriesCreatorsData> get copyWith =>
      __$$_SeriesCreatorsDataCopyWithImpl<_$_SeriesCreatorsData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesCreatorsDataToJson(
      this,
    );
  }
}

abstract class _SeriesCreatorsData implements SeriesCreatorsData {
  const factory _SeriesCreatorsData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Creator> results}) = _$_SeriesCreatorsData;

  factory _SeriesCreatorsData.fromJson(Map<String, dynamic> json) =
      _$_SeriesCreatorsData.fromJson;

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
  _$$_SeriesCreatorsDataCopyWith<_$_SeriesCreatorsData> get copyWith =>
      throw _privateConstructorUsedError;
}
