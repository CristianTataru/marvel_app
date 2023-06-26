import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story.dart';

part 'comic_stories_data.freezed.dart';
part 'comic_stories_data.g.dart';

@freezed
class ComicStoriesData with _$ComicStoriesData {
  const factory ComicStoriesData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Story> results,
  }) = _ComicStoriesData;

  factory ComicStoriesData.fromJson(Map<String, Object?> json) => _$ComicStoriesDataFromJson(json);
}
