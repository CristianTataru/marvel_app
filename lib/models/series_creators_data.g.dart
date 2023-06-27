// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_creators_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesCreatorsData _$$_SeriesCreatorsDataFromJson(
        Map<String, dynamic> json) =>
    _$_SeriesCreatorsData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Creator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeriesCreatorsDataToJson(
        _$_SeriesCreatorsData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
