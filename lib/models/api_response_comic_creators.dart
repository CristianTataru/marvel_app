import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/comic_creators_data.dart';

part 'api_response_comic_creators.freezed.dart';
part 'api_response_comic_creators.g.dart';

@freezed
class ApiResponseComicCreators with _$ApiResponseComicCreators {
  const factory ApiResponseComicCreators({
    required ComicCreatorsData data,
  }) = _ApiResponseComicCreators;

  factory ApiResponseComicCreators.fromJson(Map<String, Object?> json) => _$ApiResponseComicCreatorsFromJson(json);
}
