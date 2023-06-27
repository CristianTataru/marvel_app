import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story_series_data.dart';

part 'api_response_story_series.freezed.dart';
part 'api_response_story_series.g.dart';

@freezed
class ApiResponseStorySeries with _$ApiResponseStorySeries {
  const factory ApiResponseStorySeries({
    required StorySeriesData data,
  }) = _ApiResponseStorySeries;

  factory ApiResponseStorySeries.fromJson(Map<String, Object?> json) => _$ApiResponseStorySeriesFromJson(json);
}
