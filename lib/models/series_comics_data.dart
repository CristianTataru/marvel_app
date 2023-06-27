import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic.dart';

part 'series_comics_data.freezed.dart';
part 'series_comics_data.g.dart';

@freezed
class SeriesComicsData with _$SeriesComicsData {
  const factory SeriesComicsData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Comic> results,
  }) = _SeriesComicsData;

  factory SeriesComicsData.fromJson(Map<String, Object?> json) => _$SeriesComicsDataFromJson(json);
}
