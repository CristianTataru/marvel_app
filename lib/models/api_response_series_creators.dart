import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series_creators_data.dart';

part 'api_response_series_creators.freezed.dart';
part 'api_response_series_creators.g.dart';

@freezed
class ApiResponseSeriesCreators with _$ApiResponseSeriesCreators {
  const factory ApiResponseSeriesCreators({
    required SeriesCreatorsData data,
  }) = _ApiResponseSeriesCreators;

  factory ApiResponseSeriesCreators.fromJson(Map<String, Object?> json) => _$ApiResponseSeriesCreatorsFromJson(json);
}
