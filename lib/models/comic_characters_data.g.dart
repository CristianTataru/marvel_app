// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_characters_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicCharactersData _$$_ComicCharactersDataFromJson(
        Map<String, dynamic> json) =>
    _$_ComicCharactersData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComicCharactersDataToJson(
        _$_ComicCharactersData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
