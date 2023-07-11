import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:retrofit/http.dart';

part 'marvel_api.g.dart';

@injectable
@RestApi(baseUrl: 'https://gateway.marvel.com/v1/public/')
abstract class MarvelApi {
  @factoryMethod
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
      'characters/{characterId}/comics?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComic> getCharacterComics(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'characters/{characterId}/series?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeries> getCharacterSeries(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'characters/{characterId}/stories?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStory> getCharacterStories(
    @Path('characterId') int characterId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'comics/{comicId}/characters?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacter> getComicCharacters(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'comics/{comicId}/stories?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStory> getComicStories(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'comics/{comicId}/creators?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCreator> getComicCreators(
    @Path('comicId') int comicId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'series/{seriesId}/characters?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacter> getSeriesCharacters(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'series/{seriesId}/comics?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComic> getSeriesComics(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'series/{seriesId}/creators?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCreator> getSeriesCreators(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'series/{seriesId}/stories?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStory> getSeriesStories(
    @Path('seriesId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'stories/{storyId}/characters?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCharacter> getStoryCharacters(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'stories/{storyId}/comics?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComic> getStoryComics(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'stories/{storyId}/series?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeries> getStorySeries(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'stories/{storyId}/creators?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseCreator> getStoryCreators(
    @Path('storyId') int seriesId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'creators/{creatorId}/comics?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseComic> getCreatorComics(
    @Path('creatorId') int creatorId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'creators/{creatorId}/series?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseSeries> getCreatorSeries(
    @Path('creatorId') int creatorId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );

  @GET(
      'creators/{creatorId}/stories?limit={limit}&offset={offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d')
  Future<ApiResponseStory> getCreatorStories(
    @Path('creatorId') int creatorId,
    @Path('limit') int limit,
    @Path('offset') int offset,
  );
}
