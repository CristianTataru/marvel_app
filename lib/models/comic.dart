import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/thumbnail.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  const factory Comic({
    required int id,
    required Thumbnail thumbnail,
  }) = _Comic;

  factory Comic.fromJson(Map<String, Object?> json) => _$ComicFromJson(json);
}
