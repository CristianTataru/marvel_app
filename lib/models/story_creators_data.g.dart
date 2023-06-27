// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_creators_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryCreatorsData _$$_StoryCreatorsDataFromJson(Map<String, dynamic> json) =>
    _$_StoryCreatorsData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Creator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoryCreatorsDataToJson(
        _$_StoryCreatorsData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
