import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character_comics_data.dart';

part 'api_response_character_comics.freezed.dart';
part 'api_response_character_comics.g.dart';

@freezed
class ApiResponseCharacterComic with _$ApiResponseCharacterComic {
  const factory ApiResponseCharacterComic({
    required CharacterComicData data,
  }) = _ApiResponseCharacterComic;

  factory ApiResponseCharacterComic.fromJson(Map<String, Object?> json) => _$ApiResponseCharacterComicFromJson(json);
}
