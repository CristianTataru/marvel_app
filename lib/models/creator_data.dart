import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator.dart';

part 'creator_data.freezed.dart';
part 'creator_data.g.dart';

@freezed
class CreatorData with _$CreatorData {
  const factory CreatorData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Creator> results}) = _CreatorData;

  factory CreatorData.fromJson(Map<String, Object?> json) => _$CreatorDataFromJson(json);
}
