// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatorData _$$_CreatorDataFromJson(Map<String, dynamic> json) =>
    _$_CreatorData(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      total: json['total'] as int,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Creator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreatorDataToJson(_$_CreatorData instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
