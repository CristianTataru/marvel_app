import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series_stories_data.dart';

part 'api_response_series_stories.freezed.dart';
part 'api_response_series_stories.g.dart';

@freezed
class ApiResponseSeriesStories with _$ApiResponseSeriesStories {
  const factory ApiResponseSeriesStories({
    required SeriesStoriesData data,
  }) = _ApiResponseSeriesStories;

  factory ApiResponseSeriesStories.fromJson(Map<String, Object?> json) => _$ApiResponseSeriesStoriesFromJson(json);
}
