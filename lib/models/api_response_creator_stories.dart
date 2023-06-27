import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator_stories_data.dart';

part 'api_response_creator_stories.freezed.dart';
part 'api_response_creator_stories.g.dart';

@freezed
class ApiResponseCreatorStories with _$ApiResponseCreatorStories {
  const factory ApiResponseCreatorStories({
    required CreatorStoriesData data,
  }) = _ApiResponseCreatorStories;

  factory ApiResponseCreatorStories.fromJson(Map<String, Object?> json) => _$ApiResponseCreatorStoriesFromJson(json);
}
