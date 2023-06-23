// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_comics_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterComicData _$$_CharacterComicDataFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterComicData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterComicDataToJson(
        _$_CharacterComicData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
