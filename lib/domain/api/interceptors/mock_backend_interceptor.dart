import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class MockBackendInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (urlToMockDataPath.keys.contains(options.path)) {
      final data = jsonDecode(File('${urlToMockDataPath[options.path]}').readAsStringSync());
      handler.resolve(
        Response(
          requestOptions: options,
          data: data,
          statusCode: 200,
        ),
      );
      return;
    }
    handler.reject(
      DioException(
        requestOptions: options,
        message: "You haven't mocked this endpoint for the path ${options.path}",
      ),
    );
  }

  Map<String, String> urlToMockDataPath = {
    'characters?offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_characters.json",
    'characters?offset=20&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_more_characters.json",
    'comics?offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_comics.json",
    'comics?offset=20&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_more_comics.json",
    'series?offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_series.json",
    'series?offset=20&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_more_series.json",
    'stories?offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_stories.json",
    'stories?offset=20&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_more_stories.json",
    'creators?offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_creators.json",
    'creators?offset=20&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        "test/test_resources/get_more_creators.json",
    'characters/1011334/comics?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_character_comics.json',
    'characters/1011334/series?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_character_series.json',
    'characters/1011334/stories?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_character_stories.json',
    'comics/82967/characters?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_comic_characters.json',
    'comics/82967/stories?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_comic_stories.json',
    'comics/82967/creators?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_comic_creators.json',
    'series/27981/characters?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_series_characters.json',
    'series/27981/comics?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_series_comics.json',
    'series/27981/stories?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_series_stories.json',
    'series/27981/creators?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_series_creators.json',
    'stories/7/characters?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_story_characters.json',
    'stories/7/comics?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_story_comics.json',
    'stories/7/series?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_story_series.json',
    'stories/7/creators?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_story_creators.json',
    'creators/3634/comics?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_creator_comics.json',
    'creators/3634/series?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_creator_series.json',
    'creators/3634/stories?limit=20&offset=0&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d':
        'test/test_resources/get_creator_stories.json',
  };
}
