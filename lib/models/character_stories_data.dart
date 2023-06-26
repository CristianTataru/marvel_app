import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/story.dart';

part 'character_stories_data.freezed.dart';
part 'character_stories_data.g.dart';

@freezed
class CharacterStoriesData with _$CharacterStoriesData {
  const factory CharacterStoriesData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Story> results}) = _CharacterStoriesData;

  factory CharacterStoriesData.fromJson(Map<String, Object?> json) => _$CharacterStoriesDataFromJson(json);
}
