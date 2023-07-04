// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _MarvelApi implements MarvelApi {
  _MarvelApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://gateway.marvel.com/v1/public/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResponseCharacter> getCharacters(int offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCharacter>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'characters?offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCharacter.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseComic> getComics(int offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ApiResponseComic>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'comics?offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseComic.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseSeries> getSeries(int offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ApiResponseSeries>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'series?offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseSeries.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseStory> getStories(int offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ApiResponseStory>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'stories?offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseStory.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCreator> getCreators(int offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ApiResponseCreator>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'creators?offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCreator.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCharacterComic> getCharacterComics(
    int characterId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCharacterComic>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'characters/${characterId}/comics?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCharacterComic.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCharacterSeries> getCharacterSeries(
    int characterId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCharacterSeries>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'characters/${characterId}/series?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCharacterSeries.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCharacterStories> getCharacterStories(
    int characterId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCharacterStories>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'characters/${characterId}/stories?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCharacterStories.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseComicCharacters> getComicCharacters(
    int comicId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseComicCharacters>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'comics/${comicId}/characters?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseComicCharacters.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseComicStories> getComicStories(
    int comicId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseComicStories>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'comics/${comicId}/stories?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseComicStories.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseComicCreators> getComicCreators(
    int comicId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseComicCreators>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'comics/${comicId}/creators?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseComicCreators.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseSeriesCharacters> getSeriesCharacters(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseSeriesCharacters>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'series/${seriesId}/characters?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseSeriesCharacters.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseSeriesComics> getSeriesComics(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseSeriesComics>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'series/${seriesId}/comics?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseSeriesComics.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseSeriesCreators> getSeriesCreators(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseSeriesCreators>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'series/${seriesId}/creators?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseSeriesCreators.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseSeriesStories> getSeriesStories(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseSeriesStories>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'series/${seriesId}/stories?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseSeriesStories.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseStoryCharacters> getStoryCharacters(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseStoryCharacters>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'stories/${seriesId}/characters?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseStoryCharacters.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseStoryComics> getStoryComics(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseStoryComics>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'stories/${seriesId}/comics?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseStoryComics.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseStorySeries> getStorySeries(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseStorySeries>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'stories/${seriesId}/series?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseStorySeries.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseStoryCreators> getStoryCreators(
    int seriesId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseStoryCreators>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'stories/${seriesId}/creators?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseStoryCreators.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCreatorComic> getCreatorComics(
    int creatorId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCreatorComic>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'creators/${creatorId}/comics?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCreatorComic.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCreatorSeries> getCreatorSeries(
    int creatorId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCreatorSeries>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'creators/${creatorId}/series?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCreatorSeries.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiResponseCreatorStories> getCreatorStories(
    int creatorId,
    int limit,
    int offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponseCreatorStories>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'creators/${creatorId}/stories?limit=${limit}&offset=${offset}&ts=1&apikey=00ee96560cac21670b4f2de5366c8424&hash=21872f0e0170799d38b91f74ff9b9c4d',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponseCreatorStories.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
