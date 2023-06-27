import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story.dart';

part 'creator_stories_data.freezed.dart';
part 'creator_stories_data.g.dart';

@freezed
class CreatorStoriesData with _$CreatorStoriesData {
  const factory CreatorStoriesData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Story> results,
  }) = _CreatorStoriesData;

  factory CreatorStoriesData.fromJson(Map<String, Object?> json) => _$CreatorStoriesDataFromJson(json);
}
