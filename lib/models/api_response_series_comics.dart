import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series_comics_data.dart';

part 'api_response_series_comics.freezed.dart';
part 'api_response_series_comics.g.dart';

@freezed
class ApiResponseSeriesComics with _$ApiResponseSeriesComics {
  const factory ApiResponseSeriesComics({
    required SeriesComicsData data,
  }) = _ApiResponseSeriesComics;

  factory ApiResponseSeriesComics.fromJson(Map<String, Object?> json) => _$ApiResponseSeriesComicsFromJson(json);
}
