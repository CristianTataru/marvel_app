// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_comics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesComicsData _$$_SeriesComicsDataFromJson(Map<String, dynamic> json) =>
    _$_SeriesComicsData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeriesComicsDataToJson(_$_SeriesComicsData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
