import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story.dart';

part 'series_stories_data.freezed.dart';
part 'series_stories_data.g.dart';

@freezed
class SeriesStoriesData with _$SeriesStoriesData {
  const factory SeriesStoriesData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Story> results,
  }) = _SeriesStoriesData;

  factory SeriesStoriesData.fromJson(Map<String, Object?> json) => _$SeriesStoriesDataFromJson(json);
}
