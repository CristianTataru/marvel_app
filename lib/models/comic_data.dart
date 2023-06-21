import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic.dart';

part 'comic_data.freezed.dart';
part 'comic_data.g.dart';

@freezed
class ComicData with _$ComicData {
  const factory ComicData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Comic> results}) = _ComicData;

  factory ComicData.fromJson(Map<String, Object?> json) => _$ComicDataFromJson(json);
}
