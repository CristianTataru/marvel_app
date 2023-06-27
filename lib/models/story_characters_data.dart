import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character.dart';

part 'story_characters_data.freezed.dart';
part 'story_characters_data.g.dart';

@freezed
class StoryCharactersData with _$StoryCharactersData {
  const factory StoryCharactersData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Character> results,
  }) = _StoryCharactersData;

  factory StoryCharactersData.fromJson(Map<String, Object?> json) => _$StoryCharactersDataFromJson(json);
}
