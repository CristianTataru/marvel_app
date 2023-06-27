// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Series _$$_SeriesFromJson(Map<String, dynamic> json) => _$_Series(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_SeriesToJson(_$_Series instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
    };
