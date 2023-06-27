// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_characters_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryCharactersData _$$_StoryCharactersDataFromJson(
        Map<String, dynamic> json) =>
    _$_StoryCharactersData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoryCharactersDataToJson(
        _$_StoryCharactersData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
