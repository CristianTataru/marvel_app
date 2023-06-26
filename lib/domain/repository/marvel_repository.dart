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
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
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

  Future<List<Character>> getCharacters(int offset) async {
    if (characters.isNotEmpty && offset == 0) {
      return characters.sublist(0, 20);
    }
    ApiResponseCharacter response = await marvelApi.getCharacters(offset);
    charactersTotal = response.data.total;
    characters = [...characters, ...response.data.results];
    return characters;
  }

  Future<List<Comic>> getComics(int offset) async {
    if (comics.isNotEmpty && offset == 0) {
      return comics.sublist(0, 20);
    }
    ApiResponseComic response = await marvelApi.getComics(offset);
    comicsTotal = response.data.total;
    comics = [...comics, ...response.data.results];
    return comics;
  }

  Future<List<Series>> getSeries(int offset) async {
    if (series.isNotEmpty && offset == 0) {
      return series.sublist(0, 20);
    }
    ApiResponseSeries response = await marvelApi.getSeries(offset);
    seriesTotal = response.data.total;
    series = [...series, ...response.data.results];
    return series;
  }

  Future<List<Story>> getStories(int offset) async {
    if (stories.isNotEmpty && offset == 0) {
      return stories.sublist(0, 20);
    }
    ApiResponseStory response = await marvelApi.getStories(offset);
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
    if (creators.isNotEmpty && offset == 0) {
      return creators.sublist(0, 20);
    }
    ApiResponseCreator response = await marvelApi.getCreators(offset);
    creators = [...creators, ...response.data.results];
    return creators;
  }

  Future<List<Comic>> getCharacterComics(int characterId, int limit) async {
    ApiResponseCharacterComic response = await marvelApi.getCharacterComics(characterId, limit);
    return response.data.results;
  }

  Future<List<Series>> getCharacterSeries(int characterId, int limit) async {
    ApiResponseCharacterSeries response = await marvelApi.getCharacterSeries(characterId, limit);
    return response.data.results;
  }

  Future<List<Story>> getCharacterStories(int characterId, int limit) async {
    ApiResponseCharacterStories response = await marvelApi.getCharacterStories(characterId, limit);
    return response.data.results;
  }

  Future<List<Character>> getComicCharacters(int comicId, int limit) async {
    ApiResponseComicCharacters response = await marvelApi.getComicCharacters(comicId, limit);
    return response.data.results;
  }

  Future<List<Story>> getComicStories(int comicId, int limit) async {
    ApiResponseComicStories response = await marvelApi.getComicStories(comicId, limit);
    return response.data.results;
  }

  Future<List<Creator>> getComicCreators(int comicId, int limit) async {
    ApiResponseComicCreators response = await marvelApi.getComicCreators(comicId, limit);
    return response.data.results;
  }
}