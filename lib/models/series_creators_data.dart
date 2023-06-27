import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator.dart';

part 'series_creators_data.freezed.dart';
part 'series_creators_data.g.dart';

@freezed
class SeriesCreatorsData with _$SeriesCreatorsData {
  const factory SeriesCreatorsData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Creator> results,
  }) = _SeriesCreatorsData;

  factory SeriesCreatorsData.fromJson(Map<String, Object?> json) => _$SeriesCreatorsDataFromJson(json);
}
