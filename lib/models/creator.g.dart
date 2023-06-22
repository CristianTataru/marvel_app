// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Creator _$$_CreatorFromJson(Map<String, dynamic> json) => _$_Creator(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreatorToJson(_$_Creator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'thumbnail': instance.thumbnail,
    };
