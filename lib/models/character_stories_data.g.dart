// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_stories_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterStoriesData _$$_CharacterStoriesDataFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterStoriesData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterStoriesDataToJson(
        _$_CharacterStoriesData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
