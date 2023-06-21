// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesData _$$_SeriesDataFromJson(Map<String, dynamic> json) =>
    _$_SeriesData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeriesDataToJson(_$_SeriesData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
