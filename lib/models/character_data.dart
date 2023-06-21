import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character.dart';

part 'character_data.freezed.dart';
part 'character_data.g.dart';

@freezed
class CharacterData with _$CharacterData {
  const factory CharacterData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Character> results}) = _CharacterData;

  factory CharacterData.fromJson(Map<String, Object?> json) => _$CharacterDataFromJson(json);
}
