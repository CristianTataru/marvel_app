import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story_data.dart';

part 'api_response_story.freezed.dart';
part 'api_response_story.g.dart';

@freezed
class ApiResponseStory with _$ApiResponseStory {
  const factory ApiResponseStory({
    required StoryData data,
  }) = _ApiResponseStory;

  factory ApiResponseStory.fromJson(Map<String, Object?> json) => _$ApiResponseStoryFromJson(json);
}
