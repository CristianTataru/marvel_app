import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/models/thumbnail.dart';

part 'creator.freezed.dart';
part 'creator.g.dart';

@freezed
class Creator with _$Creator {
  const factory Creator({
    required int id,
    required String fullName,
    required Thumbnail thumbnail,
    required String suffix,
  }) = _Creator;

  factory Creator.fromJson(Map<String, Object?> json) => _$CreatorFromJson(json);
}
