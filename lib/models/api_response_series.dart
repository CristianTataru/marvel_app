import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series_data.dart';

part 'api_response_series.freezed.dart';
part 'api_response_series.g.dart';

@freezed
class ApiResponseSeries with _$ApiResponseSeries {
  const factory ApiResponseSeries({
    required SeriesData data,
  }) = _ApiResponseSeries;

  factory ApiResponseSeries.fromJson(Map<String, Object?> json) => _$ApiResponseSeriesFromJson(json);
}
