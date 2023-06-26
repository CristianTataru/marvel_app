import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character.dart';

part 'comic_characters_data.freezed.dart';
part 'comic_characters_data.g.dart';

@freezed
class ComicCharactersData with _$ComicCharactersData {
  const factory ComicCharactersData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Character> results,
  }) = _ComicCharactersData;

  factory ComicCharactersData.fromJson(Map<String, Object?> json) => _$ComicCharactersDataFromJson(json);
}
