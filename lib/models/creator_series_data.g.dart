// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_series_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatorSeriesData _$$_CreatorSeriesDataFromJson(Map<String, dynamic> json) =>
    _$_CreatorSeriesData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreatorSeriesDataToJson(
        _$_CreatorSeriesData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
