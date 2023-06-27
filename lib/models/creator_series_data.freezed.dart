// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_series_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorSeriesData _$CreatorSeriesDataFromJson(Map<String, dynamic> json) {
  return _CreatorSeriesData.fromJson(json);
}

/// @nodoc
mixin _$CreatorSeriesData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Series> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorSeriesDataCopyWith<CreatorSeriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorSeriesDataCopyWith<$Res> {
  factory $CreatorSeriesDataCopyWith(
          CreatorSeriesData value, $Res Function(CreatorSeriesData) then) =
      _$CreatorSeriesDataCopyWithImpl<$Res, CreatorSeriesData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Series> results});
}

/// @nodoc
class _$CreatorSeriesDataCopyWithImpl<$Res, $Val extends CreatorSeriesData>
    implements $CreatorSeriesDataCopyWith<$Res> {
  _$CreatorSeriesDataCopyWithImpl(this._value, this._then);

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
              as List<Series>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatorSeriesDataCopyWith<$Res>
    implements $CreatorSeriesDataCopyWith<$Res> {
  factory _$$_CreatorSeriesDataCopyWith(_$_CreatorSeriesData value,
          $Res Function(_$_CreatorSeriesData) then) =
      __$$_CreatorSeriesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Series> results});
}

/// @nodoc
class __$$_CreatorSeriesDataCopyWithImpl<$Res>
    extends _$CreatorSeriesDataCopyWithImpl<$Res, _$_CreatorSeriesData>
    implements _$$_CreatorSeriesDataCopyWith<$Res> {
  __$$_CreatorSeriesDataCopyWithImpl(
      _$_CreatorSeriesData _value, $Res Function(_$_CreatorSeriesData) _then)
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
    return _then(_$_CreatorSeriesData(
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
              as List<Series>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorSeriesData implements _CreatorSeriesData {
  const _$_CreatorSeriesData(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Series> results})
      : _results = results;

  factory _$_CreatorSeriesData.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorSeriesDataFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Series> _results;
  @override
  List<Series> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CreatorSeriesData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorSeriesData &&
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
  _$$_CreatorSeriesDataCopyWith<_$_CreatorSeriesData> get copyWith =>
      __$$_CreatorSeriesDataCopyWithImpl<_$_CreatorSeriesData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorSeriesDataToJson(
      this,
    );
  }
}

abstract class _CreatorSeriesData implements CreatorSeriesData {
  const factory _CreatorSeriesData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Series> results}) = _$_CreatorSeriesData;

  factory _CreatorSeriesData.fromJson(Map<String, dynamic> json) =
      _$_CreatorSeriesData.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Series> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorSeriesDataCopyWith<_$_CreatorSeriesData> get copyWith =>
      throw _privateConstructorUsedError;
}
