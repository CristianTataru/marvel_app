import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story_characters_data.dart';

part 'api_response_story_characters.freezed.dart';
part 'api_response_story_characters.g.dart';

@freezed
class ApiResponseStoryCharacters with _$ApiResponseStoryCharacters {
  const factory ApiResponseStoryCharacters({
    required StoryCharactersData data,
  }) = _ApiResponseStoryCharacters;

  factory ApiResponseStoryCharacters.fromJson(Map<String, Object?> json) => _$ApiResponseStoryCharactersFromJson(json);
}
