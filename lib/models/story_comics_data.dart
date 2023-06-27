import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic.dart';

part 'story_comics_data.freezed.dart';
part 'story_comics_data.g.dart';

@freezed
class StoryComicsData with _$StoryComicsData {
  const factory StoryComicsData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Comic> results,
  }) = _StoryComicsData;

  factory StoryComicsData.fromJson(Map<String, Object?> json) => _$StoryComicsDataFromJson(json);
}
