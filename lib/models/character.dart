import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/thumbnail.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required Thumbnail thumbnail,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) => _$CharacterFromJson(json);
}
