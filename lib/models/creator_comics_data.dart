import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic.dart';

part 'creator_comics_data.freezed.dart';
part 'creator_comics_data.g.dart';

@freezed
class CreatorComicData with _$CreatorComicData {
  const factory CreatorComicData(
      {required int offset,
      required int limit,
      required int total,
      required int count,
      required List<Comic> results}) = _CreatorComicData;

  factory CreatorComicData.fromJson(Map<String, Object?> json) => _$CreatorComicDataFromJson(json);
}
