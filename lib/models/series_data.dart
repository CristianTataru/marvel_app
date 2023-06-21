import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/series.dart';

part 'series_data.freezed.dart';
part 'series_data.g.dart';

@freezed
class SeriesData with _$SeriesData {
  const factory SeriesData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Series> results}) = _SeriesData;

  factory SeriesData.fromJson(Map<String, Object?> json) => _$SeriesDataFromJson(json);
}
