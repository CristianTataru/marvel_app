// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicData _$$_ComicDataFromJson(Map<String, dynamic> json) => _$_ComicData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComicDataToJson(_$_ComicData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
