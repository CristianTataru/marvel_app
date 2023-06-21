import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/character_data.dart';

part 'api_response_character.freezed.dart';
part 'api_response_character.g.dart';

@freezed
class ApiResponseCharacter with _$ApiResponseCharacter {
  const factory ApiResponseCharacter({
    required CharacterData data,
  }) = _ApiResponseCharacter;

  factory ApiResponseCharacter.fromJson(Map<String, Object?> json) => _$ApiResponseCharacterFromJson(json);
}
