import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character.dart';

part 'series_characters_data.freezed.dart';
part 'series_characters_data.g.dart';

@freezed
class SeriesCharactersData with _$SeriesCharactersData {
  const factory SeriesCharactersData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Character> results,
  }) = _SeriesCharactersData;

  factory SeriesCharactersData.fromJson(Map<String, Object?> json) => _$SeriesCharactersDataFromJson(json);
}
