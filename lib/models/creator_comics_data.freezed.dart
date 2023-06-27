// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_comics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorComicData _$CreatorComicDataFromJson(Map<String, dynamic> json) {
  return _CreatorComicData.fromJson(json);
}

/// @nodoc
mixin _$CreatorComicData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Comic> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorComicDataCopyWith<CreatorComicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorComicDataCopyWith<$Res> {
  factory $CreatorComicDataCopyWith(
          CreatorComicData value, $Res Function(CreatorComicData) then) =
      _$CreatorComicDataCopyWithImpl<$Res, CreatorComicData>;
  @useResult
  $Res call({int offset, int limit, int total, int count, List<Comic> results});
}

/// @nodoc
class _$CreatorComicDataCopyWithImpl<$Res, $Val extends CreatorComicData>
    implements $CreatorComicDataCopyWith<$Res> {
  _$CreatorComicDataCopyWithImpl(this._value, this._then);

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
              as List<Comic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatorComicDataCopyWith<$Res>
    implements $CreatorComicDataCopyWith<$Res> {
  factory _$$_CreatorComicDataCopyWith(
          _$_CreatorComicData value, $Res Function(_$_CreatorComicData) then) =
      __$$_CreatorComicDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit, int total, int count, List<Comic> results});
}

/// @nodoc
class __$$_CreatorComicDataCopyWithImpl<$Res>
    extends _$CreatorComicDataCopyWithImpl<$Res, _$_CreatorComicData>
    implements _$$_CreatorComicDataCopyWith<$Res> {
  __$$_CreatorComicDataCopyWithImpl(
      _$_CreatorComicData _value, $Res Function(_$_CreatorComicData) _then)
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
    return _then(_$_CreatorComicData(
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
              as List<Comic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorComicData implements _CreatorComicData {
  const _$_CreatorComicData(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Comic> results})
      : _results = results;

  factory _$_CreatorComicData.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorComicDataFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Comic> _results;
  @override
  List<Comic> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CreatorComicData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorComicData &&
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
  _$$_CreatorComicDataCopyWith<_$_CreatorComicData> get copyWith =>
      __$$_CreatorComicDataCopyWithImpl<_$_CreatorComicData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorComicDataToJson(
      this,
    );
  }
}

abstract class _CreatorComicData implements CreatorComicData {
  const factory _CreatorComicData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Comic> results}) = _$_CreatorComicData;

  factory _CreatorComicData.fromJson(Map<String, dynamic> json) =
      _$_CreatorComicData.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Comic> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorComicDataCopyWith<_$_CreatorComicData> get copyWith =>
      throw _privateConstructorUsedError;
}
