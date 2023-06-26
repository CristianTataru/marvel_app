import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator.dart';

part 'comic_creators_data.freezed.dart';
part 'comic_creators_data.g.dart';

@freezed
class ComicCreatorsData with _$ComicCreatorsData {
  const factory ComicCreatorsData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Creator> results,
  }) = _ComicCreatorsData;

  factory ComicCreatorsData.fromJson(Map<String, Object?> json) => _$ComicCreatorsDataFromJson(json);
}
