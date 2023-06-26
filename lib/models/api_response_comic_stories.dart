import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic_stories_data.dart';

part 'api_response_comic_stories.freezed.dart';
part 'api_response_comic_stories.g.dart';

@freezed
class ApiResponseComicStories with _$ApiResponseComicStories {
  const factory ApiResponseComicStories({
    required ComicStoriesData data,
  }) = _ApiResponseComicStories;

  factory ApiResponseComicStories.fromJson(Map<String, Object?> json) => _$ApiResponseComicStoriesFromJson(json);
}
