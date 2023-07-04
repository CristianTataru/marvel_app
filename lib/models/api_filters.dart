import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

class ApiFilter {
  final Character? character;
  final Comic? comic;
  final Creator? creator;
  final Series? series;
  final Story? story;

  ApiFilter({this.character, this.comic, this.creator, this.series, this.story});
}
