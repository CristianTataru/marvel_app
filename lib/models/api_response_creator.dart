import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/creator_data.dart';

part 'api_response_creator.freezed.dart';
part 'api_response_creator.g.dart';

@freezed
class ApiResponseCreator with _$ApiResponseCreator {
  const factory ApiResponseCreator({
    required CreatorData data,
  }) = _ApiResponseCreator;

  factory ApiResponseCreator.fromJson(Map<String, Object?> json) => _$ApiResponseCreatorFromJson(json);
}
