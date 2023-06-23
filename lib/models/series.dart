import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/thumbnail.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const factory Series({
    required int id,
    required String title,
    required Thumbnail thumbnail,
  }) = _Series;

  factory Series.fromJson(Map<String, Object?> json) => _$SeriesFromJson(json);
}
