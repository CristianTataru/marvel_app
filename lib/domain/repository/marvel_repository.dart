import 'package:html_unescape/html_unescape.dart';
import 'package:marvel_app/domain/api/marvel_api.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_character_comics.dart';
import 'package:marvel_app/models/api_response_character_series.dart';
import 'package:marvel_app/models/api_response_character_stories.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_comic_characters.dart';
import 'package:marvel_app/models/api_response_comic_creators.dart';
import 'package:marvel_app/models/api_response_comic_stories.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_creator_comics.dart';
import 'package:marvel_app/models/api_response_creator_series.dart';
import 'package:marvel_app/models/api_response_creator_stories.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_series_characters.dart';
import 'package:marvel_app/models/api_response_series_comics.dart';
import 'package:marvel_app/models/api_response_series_creators.dart';
import 'package:marvel_app/models/api_response_series_stories.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/api_response_story_characters.dart';
import 'package:marvel_app/models/api_response_story_comics.dart';
import 'package:marvel_app/models/api_response_story_creators.dart';
import 'package:marvel_app/models/api_response_story_series.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

class MarvelRepository {
  MarvelRepository(this.marvelApi);

  final MarvelApi marvelApi;

  List<Character> characters = [];
  List<Comic> comics = [];
  List<Series> series = [];
  List<Story> stories = [];
  List<Creator> creators = [];
  int charactersTotal = 0;
  int comicsTotal = 0;
  int seriesTotal = 0;
  int storiesTotal = 0;
  int creatorsTotal = 0;

  Future<List<Character>> getCharacters(int offset) async {
    ApiResponseCharacter response = await marvelApi.getCharacters(offset);
    charactersTotal = response.data.total;
    if (characters.isNotEmpty && offset == 0) {
      return characters.sublist(0, 20);
    }
    characters = [...characters, ...response.data.results];
    return characters;
  }

  Future<List<Comic>> getComics(int offset) async {
    ApiResponseComic response = await marvelApi.getComics(offset);
    comicsTotal = response.data.total;
    if (comics.isNotEmpty && offset == 0) {
      return comics.sublist(0, 20);
    }
    comics = [...comics, ...response.data.results];
    return comics;
  }

  Future<List<Series>> getSeries(int offset) async {
    ApiResponseSeries response = await marvelApi.getSeries(offset);
    seriesTotal = response.data.total;
    if (series.isNotEmpty && offset == 0) {
      return series.sublist(0, 20);
    }
    series = [...series, ...response.data.results];
    return series;
  }

  Future<List<Story>> getStories(int offset) async {
    ApiResponseStory response = await marvelApi.getStories(offset);
    storiesTotal = response.data.total;
    if (stories.isNotEmpty && offset == 0) {
      return stories.sublist(0, 20);
    }
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();

    stories = [...stories, ...htmlStories];
    return stories;
  }

  Future<List<Creator>> getCreators(int offset) async {
    ApiResponseCreator response = await marvelApi.getCreators(offset);
    creatorsTotal = response.data.total;
    if (creators.isNotEmpty && offset == 0) {
      return creators.sublist(0, 20);
    }
    creators = [...creators, ...response.data.results];
    return creators;
  }

  Future<List<Comic>> getCharacterComics(int characterId, int limit, int offset) async {
    ApiResponseCharacterComic response = await marvelApi.getCharacterComics(characterId, limit, offset);
    comicsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Series>> getCharacterSeries(int characterId, int limit, int offset) async {
    ApiResponseCharacterSeries response = await marvelApi.getCharacterSeries(characterId, limit, offset);
    seriesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Story>> getCharacterStories(int characterId, int limit, int offset) async {
    ApiResponseCharacterStories response = await marvelApi.getCharacterStories(characterId, limit, offset);
    storiesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Character>> getComicCharacters(int comicId, int limit, int offset) async {
    ApiResponseComicCharacters response = await marvelApi.getComicCharacters(comicId, limit, offset);
    charactersTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Story>> getComicStories(int comicId, int limit, int offset) async {
    ApiResponseComicStories response = await marvelApi.getComicStories(comicId, limit, offset);
    storiesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Creator>> getComicCreators(int comicId, int limit, int offset) async {
    ApiResponseComicCreators response = await marvelApi.getComicCreators(comicId, limit, offset);
    creatorsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Character>> getSeriesCharacters(int seriesId, int limit, int offset) async {
    ApiResponseSeriesCharacters response = await marvelApi.getSeriesCharacters(seriesId, limit, offset);
    charactersTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Comic>> getSeriesComics(int seriesId, int limit, int offset) async {
    ApiResponseSeriesComics response = await marvelApi.getSeriesComics(seriesId, limit, offset);
    comicsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Creator>> getSeriesCreators(int seriesId, int limit, int offset) async {
    ApiResponseSeriesCreators response = await marvelApi.getSeriesCreators(seriesId, limit, offset);
    creatorsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Story>> getSeriesStories(int seriesId, int limit, int offset) async {
    ApiResponseSeriesStories response = await marvelApi.getSeriesStories(seriesId, limit, offset);
    storiesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Character>> getStoryCharacters(int storyId, int limit, int offset) async {
    ApiResponseStoryCharacters response = await marvelApi.getStoryCharacters(storyId, limit, offset);
    charactersTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Comic>> getStoryComics(int storyId, int limit, int offset) async {
    ApiResponseStoryComics response = await marvelApi.getStoryComics(storyId, limit, offset);
    comicsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Series>> getStorySeries(int storyId, int limit, int offset) async {
    ApiResponseStorySeries response = await marvelApi.getStorySeries(storyId, limit, offset);
    seriesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Creator>> getStoryCreators(int storyId, int limit, int offset) async {
    ApiResponseStoryCreators response = await marvelApi.getStoryCreators(storyId, limit, offset);
    creatorsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Comic>> getCreatorComics(int creatorId, int limit, int offset) async {
    ApiResponseCreatorComic response = await marvelApi.getCreatorComics(creatorId, limit, offset);
    comicsTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Series>> getCreatorSeries(int creatorId, int limit, int offset) async {
    ApiResponseCreatorSeries response = await marvelApi.getCreatorSeries(creatorId, limit, offset);
    seriesTotal = response.data.total;
    return response.data.results;
  }

  Future<List<Story>> getCreatorStories(int creatorId, int limit, int offset) async {
    ApiResponseCreatorStories response = await marvelApi.getCreatorStories(creatorId, limit, offset);
    storiesTotal = response.data.total;
    return response.data.results;
  }
}
