import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series_characters_data.dart';

part 'api_response_series_characters.freezed.dart';
part 'api_response_series_characters.g.dart';

@freezed
class ApiResponseSeriesCharacters with _$ApiResponseSeriesCharacters {
  const factory ApiResponseSeriesCharacters({
    required SeriesCharactersData data,
  }) = _ApiResponseSeriesCharacters;

  factory ApiResponseSeriesCharacters.fromJson(Map<String, Object?> json) =>
      _$ApiResponseSeriesCharactersFromJson(json);
}
