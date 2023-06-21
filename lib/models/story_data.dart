import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story.dart';

part 'story_data.freezed.dart';
part 'story_data.g.dart';

@freezed
class StoryData with _$StoryData {
  const factory StoryData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Story> results}) = _StoryData;

  factory StoryData.fromJson(Map<String, Object?> json) => _$StoryDataFromJson(json);
}
