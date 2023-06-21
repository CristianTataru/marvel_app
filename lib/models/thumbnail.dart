import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
class Thumbnail with _$Thumbnail {
  const factory Thumbnail({required String path, required String extension}) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, Object?> json) => _$ThumbnailFromJson(json);
}
