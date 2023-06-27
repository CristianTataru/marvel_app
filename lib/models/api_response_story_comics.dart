import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story_comics_data.dart';

part 'api_response_story_comics.freezed.dart';
part 'api_response_story_comics.g.dart';

@freezed
class ApiResponseStoryComics with _$ApiResponseStoryComics {
  const factory ApiResponseStoryComics({
    required StoryComicsData data,
  }) = _ApiResponseStoryComics;

  factory ApiResponseStoryComics.fromJson(Map<String, Object?> json) => _$ApiResponseStoryComicsFromJson(json);
}
