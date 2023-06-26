import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character_series_data.dart';

part 'api_response_character_series.freezed.dart';
part 'api_response_character_series.g.dart';

@freezed
class ApiResponseCharacterSeries with _$ApiResponseCharacterSeries {
  const factory ApiResponseCharacterSeries({
    required CharacterSeriesData data,
  }) = _ApiResponseCharacterSeries;

  factory ApiResponseCharacterSeries.fromJson(Map<String, Object?> json) => _$ApiResponseCharacterSeriesFromJson(json);
}
