import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/api/marvel_api.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/character_data.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/comic_data.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/creator_data.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/series_data.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/models/story_data.dart';
import 'package:marvel_app/models/thumbnail.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group("Marvel Repository test", () {
    const stubCharacterList = [
      Character(
        id: 1,
        name: 'Stub Character 1',
        description: 'Stub Description 1',
        thumbnail: Thumbnail(path: '', extension: ''),
      ),
      Character(
        id: 2,
        name: 'Stub Character 2',
        description: 'Stub Description 2',
        thumbnail: Thumbnail(path: '', extension: ''),
      ),
    ];

    const stubComicList = [
      Comic(
        id: 1,
        title: 'Stub Comic 1',
        thumbnail: Thumbnail(path: '', extension: ''),
        description: 'Stub Description 1',
      ),
      Comic(
        id: 2,
        title: 'Stub Comic 2',
        thumbnail: Thumbnail(path: '', extension: ''),
        description: 'Stub Description 2',
      ),
    ];

    const stubSeriesList = [
      Series(
        id: 1,
        title: 'Stub Series 1',
        thumbnail: Thumbnail(path: '', extension: ''),
        description: 'Stub Description 1',
      ),
      Series(
        id: 2,
        title: 'Stub Series 2',
        thumbnail: Thumbnail(path: '', extension: ''),
        description: 'Stub Description 2',
      ),
    ];

    const stubStoriesList = [
      Story(id: 1, title: 'Stub Story 1', description: 'Stub Description 1'),
      Story(id: 2, title: 'Stub Story 2', description: 'Stub Description 2'),
    ];

    const stubCreatorsList = [
      Creator(id: 1, fullName: 'Stub Creator 1', thumbnail: Thumbnail(path: '', extension: ''), suffix: ''),
      Creator(id: 2, fullName: 'Stub Creator 2', thumbnail: Thumbnail(path: '', extension: ''), suffix: ''),
    ];

    const stubCharacterData = CharacterData(offset: 0, limit: 2, total: 2, count: 2, results: stubCharacterList);
    const stubComicData = ComicData(offset: 0, limit: 2, total: 2, count: 2, results: stubComicList);
    const stubSeriesData = SeriesData(offset: 0, limit: 2, total: 2, count: 2, results: stubSeriesList);
    const stubStoriesData = StoryData(offset: 0, limit: 2, total: 2, count: 2, results: stubStoriesList);
    const stubCreatorsData = CreatorData(offset: 0, limit: 2, total: 2, count: 2, results: stubCreatorsList);

    late MockMarvelApi mockMarvelApi;
    late MarvelRepository subject;
    setUp(() {
      mockMarvelApi = MockMarvelApi();
      subject = MarvelRepository(mockMarvelApi);
    });
    test("Get characters", () async {
      when(() => mockMarvelApi.getCharacters(0)).thenAnswer((_) async {
        return const ApiResponseCharacter(data: stubCharacterData);
      });
      final result = await subject.getCharacters(0);
      expect(result.data.results, stubCharacterList);
    });
    test("Get comics", () async {
      when(() => mockMarvelApi.getComics(0)).thenAnswer((_) async {
        return const ApiResponseComic(data: stubComicData);
      });
      final result = await subject.getComics(0);
      expect(result.data.results, stubComicList);
    });
    test("Get series", () async {
      when(() => mockMarvelApi.getSeries(0)).thenAnswer((_) async {
        return const ApiResponseSeries(data: stubSeriesData);
      });
      final result = await subject.getSeries(0);
      expect(result.data.results, stubSeriesList);
    });
    test("Get stories", () async {
      when(() => mockMarvelApi.getStories(0)).thenAnswer((_) async {
        return const ApiResponseStory(data: stubStoriesData);
      });
      final result = await subject.getStories(0);
      expect(result.data.results, stubStoriesList);
    });
    test("Get creators", () async {
      when(() => mockMarvelApi.getCreators(0)).thenAnswer((_) async {
        return const ApiResponseCreator(data: stubCreatorsData);
      });
      final result = await subject.getCreators(0);
      expect(result.data.results, stubCreatorsList);
    });
    test("Get character comics", () async {
      when(() => mockMarvelApi.getCharacterComics(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseComic(data: stubComicData);
      });
      final result = await subject.getCharacterComics(1, 2, 0);
      expect(result.data.results, stubComicList);
    });
    test("Get character series", () async {
      when(() => mockMarvelApi.getCharacterSeries(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseSeries(data: stubSeriesData);
      });
      final result = await subject.getCharacterSeries(1, 2, 0);
      expect(result.data.results, stubSeriesList);
    });
    test("Get character stories", () async {
      when(() => mockMarvelApi.getCharacterStories(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseStory(data: stubStoriesData);
      });
      final result = await subject.getCharacterStories(1, 2, 0);
      expect(result.data.results, stubStoriesList);
    });
    test("Get comic characters", () async {
      when(() => mockMarvelApi.getComicCharacters(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCharacter(data: stubCharacterData);
      });
      final result = await subject.getComicCharacters(1, 2, 0);
      expect(result.data.results, stubCharacterList);
    });
    test("Get comic stories", () async {
      when(() => mockMarvelApi.getComicStories(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseStory(data: stubStoriesData);
      });
      final result = await subject.getComicStories(1, 2, 0);
      expect(result.data.results, stubStoriesList);
    });
    test("Get comic creators", () async {
      when(() => mockMarvelApi.getComicCreators(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCreator(data: stubCreatorsData);
      });
      final result = await subject.getComicCreators(1, 2, 0);
      expect(result.data.results, stubCreatorsList);
    });
    test("Get series characters", () async {
      when(() => mockMarvelApi.getSeriesCharacters(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCharacter(data: stubCharacterData);
      });
      final result = await subject.getSeriesCharacters(1, 2, 0);
      expect(result.data.results, stubCharacterList);
    });
    test("Get series comics", () async {
      when(() => mockMarvelApi.getSeriesComics(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseComic(data: stubComicData);
      });
      final result = await subject.getSeriesComics(1, 2, 0);
      expect(result.data.results, stubComicList);
    });
    test("Get series creators", () async {
      when(() => mockMarvelApi.getSeriesCreators(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCreator(data: stubCreatorsData);
      });
      final result = await subject.getSeriesCreators(1, 2, 0);
      expect(result.data.results, stubCreatorsList);
    });
    test("Get series stories", () async {
      when(() => mockMarvelApi.getSeriesStories(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseStory(data: stubStoriesData);
      });
      final result = await subject.getSeriesStories(1, 2, 0);
      expect(result.data.results, stubStoriesList);
    });
    test("Get story characters", () async {
      when(() => mockMarvelApi.getStoryCharacters(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCharacter(data: stubCharacterData);
      });
      final result = await subject.getStoryCharacters(1, 2, 0);
      expect(result.data.results, stubCharacterList);
    });
    test("Get story comics", () async {
      when(() => mockMarvelApi.getStoryComics(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseComic(data: stubComicData);
      });
      final result = await subject.getStoryComics(1, 2, 0);
      expect(result.data.results, stubComicList);
    });
    test("Get story series", () async {
      when(() => mockMarvelApi.getStorySeries(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseSeries(data: stubSeriesData);
      });
      final result = await subject.getStorySeries(1, 2, 0);
      expect(result.data.results, stubSeriesList);
    });
    test("Get story creators", () async {
      when(() => mockMarvelApi.getStoryCreators(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseCreator(data: stubCreatorsData);
      });
      final result = await subject.getStoryCreators(1, 2, 0);
      expect(result.data.results, stubCreatorsList);
    });
    test("Get creator comics", () async {
      when(() => mockMarvelApi.getCreatorComics(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseComic(data: stubComicData);
      });
      final result = await subject.getCreatorComics(1, 2, 0);
      expect(result.data.results, stubComicList);
    });
    test("Get creator series", () async {
      when(() => mockMarvelApi.getCreatorSeries(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseSeries(data: stubSeriesData);
      });
      final result = await subject.getCreatorSeries(1, 2, 0);
      expect(result.data.results, stubSeriesList);
    });
    test("Get creator stories", () async {
      when(() => mockMarvelApi.getCreatorStories(1, 2, 0)).thenAnswer((_) async {
        return const ApiResponseStory(data: stubStoriesData);
      });
      final result = await subject.getCreatorStories(1, 2, 0);
      expect(result.data.results, stubStoriesList);
    });
  });
}

class MockMarvelApi extends Mock implements MarvelApi {}
