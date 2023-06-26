// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_creators_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicCreatorsData _$$_ComicCreatorsDataFromJson(Map<String, dynamic> json) =>
    _$_ComicCreatorsData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Creator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComicCreatorsDataToJson(
        _$_ComicCreatorsData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
