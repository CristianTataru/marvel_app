import 'package:html_unescape/html_unescape.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/api/marvel_api.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/models/story_data.dart';

@singleton
class MarvelRepository {
  MarvelRepository(this.marvelApi);

  final MarvelApi marvelApi;

  Future<ApiResponseCharacter> getCharacters(int offset) async {
    return await marvelApi.getCharacters(offset);
  }

  Future<ApiResponseComic> getComics(int offset) async {
    return await marvelApi.getComics(offset);
  }

  Future<ApiResponseSeries> getSeries(int offset) async {
    return await marvelApi.getSeries(offset);
  }

  Future<ApiResponseStory> getStories(int offset) async {
    ApiResponseStory response = await marvelApi.getStories(offset);
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    return ApiResponseStory(
        data: StoryData(
            offset: offset,
            limit: response.data.limit,
            total: response.data.total,
            count: response.data.count,
            results: htmlStories));
  }

  Future<ApiResponseCreator> getCreators(int offset) async {
    return await marvelApi.getCreators(offset);
  }

  Future<ApiResponseComic> getCharacterComics(int characterId, int limit, int offset) async {
    return await marvelApi.getCharacterComics(characterId, limit, offset);
  }

  Future<ApiResponseSeries> getCharacterSeries(int characterId, int limit, int offset) async {
    return await marvelApi.getCharacterSeries(characterId, limit, offset);
  }

  Future<ApiResponseStory> getCharacterStories(int characterId, int limit, int offset) async {
    ApiResponseStory response = await marvelApi.getCharacterStories(characterId, limit, offset);
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    return ApiResponseStory(
      data: StoryData(
          offset: offset,
          limit: response.data.limit,
          total: response.data.total,
          count: response.data.count,
          results: htmlStories),
    );
  }

  Future<ApiResponseCharacter> getComicCharacters(int comicId, int limit, int offset) async {
    return await marvelApi.getComicCharacters(comicId, limit, offset);
  }

  Future<ApiResponseStory> getComicStories(int comicId, int limit, int offset) async {
    ApiResponseStory response = await marvelApi.getComicStories(comicId, limit, offset);
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    return ApiResponseStory(
      data: StoryData(
          offset: offset,
          limit: response.data.limit,
          total: response.data.total,
          count: response.data.count,
          results: htmlStories),
    );
  }

  Future<ApiResponseCreator> getComicCreators(int comicId, int limit, int offset) async {
    return await marvelApi.getComicCreators(comicId, limit, offset);
  }

  Future<ApiResponseCharacter> getSeriesCharacters(int seriesId, int limit, int offset) async {
    return await marvelApi.getSeriesCharacters(seriesId, limit, offset);
  }

  Future<ApiResponseComic> getSeriesComics(int seriesId, int limit, int offset) async {
    return await marvelApi.getSeriesComics(seriesId, limit, offset);
  }

  Future<ApiResponseCreator> getSeriesCreators(int seriesId, int limit, int offset) async {
    return await marvelApi.getSeriesCreators(seriesId, limit, offset);
  }

  Future<ApiResponseStory> getSeriesStories(int seriesId, int limit, int offset) async {
    ApiResponseStory response = await marvelApi.getSeriesStories(seriesId, limit, offset);
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    return ApiResponseStory(
      data: StoryData(
          offset: offset,
          limit: response.data.limit,
          total: response.data.total,
          count: response.data.count,
          results: htmlStories),
    );
  }

  Future<ApiResponseCharacter> getStoryCharacters(int storyId, int limit, int offset) async {
    return await marvelApi.getStoryCharacters(storyId, limit, offset);
  }

  Future<ApiResponseComic> getStoryComics(int storyId, int limit, int offset) async {
    return await marvelApi.getStoryComics(storyId, limit, offset);
  }

  Future<ApiResponseSeries> getStorySeries(int storyId, int limit, int offset) async {
    return await marvelApi.getStorySeries(storyId, limit, offset);
  }

  Future<ApiResponseCreator> getStoryCreators(int storyId, int limit, int offset) async {
    return await marvelApi.getStoryCreators(storyId, limit, offset);
  }

  Future<ApiResponseComic> getCreatorComics(int creatorId, int limit, int offset) async {
    return await marvelApi.getCreatorComics(creatorId, limit, offset);
  }

  Future<ApiResponseSeries> getCreatorSeries(int creatorId, int limit, int offset) async {
    return await marvelApi.getCreatorSeries(creatorId, limit, offset);
  }

  Future<ApiResponseStory> getCreatorStories(int creatorId, int limit, int offset) async {
    ApiResponseStory response = await marvelApi.getCreatorStories(creatorId, limit, offset);
    List<Story> htmlStories = response.data.results
        .map(
          (story) => story.copyWith(
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    return ApiResponseStory(
      data: StoryData(
          offset: offset,
          limit: response.data.limit,
          total: response.data.total,
          count: response.data.count,
          results: htmlStories),
    );
  }
}
