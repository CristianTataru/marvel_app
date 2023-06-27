import 'package:dio/dio.dart';
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
import 'package:marvel_app/models/api_response_series_characters.dart';
import 'package:marvel_app/models/api_response_series_comics.dart';
import 'package:marvel_app/models/api_response_series_creators.dart';
import 'package:marvel_app/models/api_response_series_stories.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/api_response_story_characters.dart';
import 'package:marvel_app/models/api_response_story_comics.dart';
import 'package:marvel_app/models/api_response_story_creators.dart';
import 'package:marvel_app/models/api_response_story_series.dart';
import 'package:retrofit/http.dart';

part 'marvel_api.g.dart';

@RestApi(baseUrl: 'https://gateway.marvel.com/v1/public/')
abstract class MarvelApi {
  factory MarvelApi(Dio dio) = _MarvelApi;

  @GET('characters?offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacter> getCharacters(@Path('offset') int offset);

  @GET('comics?offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComic> getComics(@Path('offset') int offset);

  @GET('series?offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeries> getSeries(@Path('offset') int offset);

  @GET('stories?offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStory> getStories(@Path('offset') int offset);

  @GET('creators?offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCreator> getCreators(@Path('offset') int offset);

  @GET(
      'characters/{characterId}/comics?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacterComic> getCharacterComics(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
  );

  @GET(
      'characters/{characterId}/series?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacterSeries> getCharacterSeries(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
  );

  @GET(
      'characters/{characterId}/stories?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacterStories> getCharacterStories(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
  );

  @GET(
      'comics/{comicId}/characters?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComicCharacters> getComicCharacters(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
  );

  @GET(
      'comics/{comicId}/stories?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComicStories> getComicStories(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
  );

  @GET(
      'comics/{comicId}/creators?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComicCreators> getComicCreators(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
  );

  @GET(
      'series/{seriesId}/characters?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeriesCharacters> getSeriesCharacters(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'series/{seriesId}/comics?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeriesComics> getSeriesComics(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'series/{seriesId}/creators?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeriesCreators> getSeriesCreators(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'series/{seriesId}/stories?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeriesStories> getSeriesStories(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'stories/{storyId}/characters?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStoryCharacters> getStoryCharacters(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'stories/{storyId}/comics?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStoryComics> getStoryComics(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'stories/{storyId}/series?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStorySeries> getStorySeries(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
  );

  @GET(
      'stories/{storyId}/creators?limit={limit}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStoryCreators> getStoryCreators(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
  );
}
