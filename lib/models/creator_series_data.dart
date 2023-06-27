import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series.dart';

part 'creator_series_data.freezed.dart';
part 'creator_series_data.g.dart';

@freezed
class CreatorSeriesData with _$CreatorSeriesData {
  const factory CreatorSeriesData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Series> results}) = _CreatorSeriesData;

  factory CreatorSeriesData.fromJson(Map<String, Object?> json) => _$CreatorSeriesDataFromJson(json);
}
