import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator_comics_data.dart';

part 'api_response_creator_comics.freezed.dart';
part 'api_response_creator_comics.g.dart';

@freezed
class ApiResponseCreatorComic with _$ApiResponseCreatorComic {
  const factory ApiResponseCreatorComic({
    required CreatorComicData data,
  }) = _ApiResponseCreatorComic;

  factory ApiResponseCreatorComic.fromJson(Map<String, Object?> json) => _$ApiResponseCreatorComicFromJson(json);
}
