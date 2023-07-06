import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/models/thumbnail.dart';

class StubData {
  StubData._();

  static const thumbnail = Thumbnail(path: '', extension: '');

  static const stubComic =
      Comic(id: 1, title: 'Stub Comic', thumbnail: thumbnail, description: 'Stub Comic description');

  static const stubComicList = [
    Comic(id: 1, title: 'Stub Comic 1', thumbnail: thumbnail, description: 'Stub Comic description 1'),
    Comic(id: 2, title: 'Stub Comic 2', thumbnail: thumbnail, description: 'Stub Comic description 2'),
  ];

  static const stubCharacter =
      Character(id: 1, name: 'Stub Character', description: 'Stub Character description', thumbnail: thumbnail);

  static const stubCharacterList = [
    Character(id: 1, name: 'Stub Character 1', description: 'Stub Character description 1', thumbnail: thumbnail),
    Character(id: 2, name: 'Stub Character 2', description: 'Stub Character description 2', thumbnail: thumbnail),
  ];

  static const stubSeries =
      Series(id: 1, title: 'Stub Series', thumbnail: thumbnail, description: 'Stub Series description');

  static const stubSeriesList = [
    Series(id: 1, title: 'Stub Series 1', thumbnail: thumbnail, description: 'Stub Series description 1'),
    Series(id: 2, title: 'Stub Series 2', thumbnail: thumbnail, description: 'Stub Series description 2'),
  ];

  static const stubStory = Story(id: 1, title: 'Stub Story', description: 'Stub Story description');

  static const stubStoryList = [
    Story(id: 1, title: 'Stub Story 1', description: 'Stub Story description 1'),
    Story(id: 2, title: 'Stub Story 2', description: 'Stub Story description 2'),
  ];

  static const stubCreator = Creator(id: 1, fullName: 'Stub Creator', thumbnail: thumbnail, suffix: 'Stub Suffix');

  static const stubCreatorList = [
    Creator(id: 1, fullName: 'Stub Creator 1', thumbnail: thumbnail, suffix: 'Stub Suffix 1'),
    Creator(id: 2, fullName: 'Stub Creator 2', thumbnail: thumbnail, suffix: 'Stub Suffix 2'),
  ];
}
