import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator_series_data.dart';

part 'api_response_creator_series.freezed.dart';
part 'api_response_creator_series.g.dart';

@freezed
class ApiResponseCreatorSeries with _$ApiResponseCreatorSeries {
  const factory ApiResponseCreatorSeries({
    required CreatorSeriesData data,
  }) = _ApiResponseCreatorSeries;

  factory ApiResponseCreatorSeries.fromJson(Map<String, Object?> json) => _$ApiResponseCreatorSeriesFromJson(json);
}
