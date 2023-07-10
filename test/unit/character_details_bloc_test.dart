import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/character_details/bloc/character_details_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/comic_data.dart';
import 'package:marvel_app/models/series_data.dart';
import 'package:marvel_app/models/story_data.dart';
import 'package:marvel_app/routes/router.gr.dart';
import 'package:mocktail/mocktail.dart';

import 'bloc_test_resources.dart';
import 'mocks.dart';

void main() {
  late MockMarvelRepository mockMarvelRepository;
  late MockAppRouter mockRouter;

  setUpAll(() {
    registerFallbackValue(const PageRouteInfo(''));
  });

  setUp(() {
    mockMarvelRepository = MockMarvelRepository();
    mockRouter = MockAppRouter();
    when(() => mockMarvelRepository.getCharacterComics(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return const ApiResponseComic(
          data: ComicData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubComicList));
    });
    when(() => mockMarvelRepository.getCharacterSeries(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return const ApiResponseSeries(
          data: SeriesData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubSeriesList));
    });
    when(() => mockMarvelRepository.getCharacterStories(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return const ApiResponseStory(
          data: StoryData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubStoryList));
    });
    when(() => mockRouter.push(ComicsRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(StoriesRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(SeriesRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group('Character Details Bloc tests', () {
    blocTest(
      'Emits [CharacterDetailsLoadingState] and [CharacterDetailsLoadedState] with loaded data when page is opened',
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CharacterDetailsEvent.onPageOpened(character: StubData.stubCharacter)),
      expect: () => [
        const CharacterDetailsState.loading(),
        const CharacterDetailsState.loaded(
            characterComics: StubData.stubComicList,
            characterSeries: StubData.stubSeriesList,
            characterStories: StubData.stubStoryList),
      ],
    );
    blocTest(
      "Open ComicsPage when See all Character Comics is tapped",
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterComicsTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicsRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
    blocTest(
      "Open StoriesPage when See all Character Stories is tapped ",
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterStoriesTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
    blocTest(
      "Open SeriesPage when See all Character Series is tapped ",
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterSeriesTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as SeriesRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
  });
}
