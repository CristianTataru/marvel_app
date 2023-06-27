import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series.dart';

part 'story_series_data.freezed.dart';
part 'story_series_data.g.dart';

@freezed
class StorySeriesData with _$StorySeriesData {
  const factory StorySeriesData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Series> results}) = _StorySeriesData;

  factory StorySeriesData.fromJson(Map<String, Object?> json) => _$StorySeriesDataFromJson(json);
}
