import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic_characters_data.dart';

part 'api_response_comic_characters.freezed.dart';
part 'api_response_comic_characters.g.dart';

@freezed
class ApiResponseComicCharacters with _$ApiResponseComicCharacters {
  const factory ApiResponseComicCharacters({
    required ComicCharactersData data,
  }) = _ApiResponseComicCharacters;

  factory ApiResponseComicCharacters.fromJson(Map<String, Object?> json) => _$ApiResponseComicCharactersFromJson(json);
}
