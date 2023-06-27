import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator.dart';

part 'story_creators_data.freezed.dart';
part 'story_creators_data.g.dart';

@freezed
class StoryCreatorsData with _$StoryCreatorsData {
  const factory StoryCreatorsData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Creator> results,
  }) = _StoryCreatorsData;

  factory StoryCreatorsData.fromJson(Map<String, Object?> json) => _$StoryCreatorsDataFromJson(json);
}
