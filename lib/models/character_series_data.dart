import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series.dart';

part 'character_series_data.freezed.dart';
part 'character_series_data.g.dart';

@freezed
class CharacterSeriesData with _$CharacterSeriesData {
  const factory CharacterSeriesData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Series> results}) = _CharacterSeriesData;

  factory CharacterSeriesData.fromJson(Map<String, Object?> json) => _$CharacterSeriesDataFromJson(json);
}
