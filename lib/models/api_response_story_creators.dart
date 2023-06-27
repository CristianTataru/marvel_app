import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story_creators_data.dart';

part 'api_response_story_creators.freezed.dart';
part 'api_response_story_creators.g.dart';

@freezed
class ApiResponseStoryCreators with _$ApiResponseStoryCreators {
  const factory ApiResponseStoryCreators({
    required StoryCreatorsData data,
  }) = _ApiResponseStoryCreators;

  factory ApiResponseStoryCreators.fromJson(Map<String, Object?> json) => _$ApiResponseStoryCreatorsFromJson(json);
}
