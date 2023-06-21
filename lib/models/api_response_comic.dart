import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic_data.dart';

part 'api_response_comic.freezed.dart';
part 'api_response_comic.g.dart';

@freezed
class ApiResponseComic with _$ApiResponseComic {
  const factory ApiResponseComic({
    required ComicData data,
  }) = _ApiResponseComic;

  factory ApiResponseComic.fromJson(Map<String, Object?> json) => _$ApiResponseComicFromJson(json);
}
