// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      id: json['id'] as int,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
    };
