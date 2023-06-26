import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character_stories_data.dart';

part 'api_response_character_stories.freezed.dart';
part 'api_response_character_stories.g.dart';

@freezed
class ApiResponseCharacterStories with _$ApiResponseCharacterStories {
  const factory ApiResponseCharacterStories({
    required CharacterStoriesData data,
  }) = _ApiResponseCharacterStories;

  factory ApiResponseCharacterStories.fromJson(Map<String, Object?> json) =>
      _$ApiResponseCharacterStoriesFromJson(json);
}
