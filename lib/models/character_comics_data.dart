import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic.dart';

part 'character_comics_data.freezed.dart';
part 'character_comics_data.g.dart';

@freezed
class CharacterComicData with _$CharacterComicData {
  const factory CharacterComicData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Comic> results}) = _CharacterComicData;

  factory CharacterComicData.fromJson(Map<String, Object?> json) => _$CharacterComicDataFromJson(json);
}
