import 'package:dio/dio.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
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
}
