// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_series_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterSeriesData _$$_CharacterSeriesDataFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterSeriesData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterSeriesDataToJson(
        _$_CharacterSeriesData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
