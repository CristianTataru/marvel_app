import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/series_details/bloc/series_details_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/character_data.dart';
import 'package:marvel_app/models/comic_data.dart';
import 'package:marvel_app/models/creator_data.dart';
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
    when(() => mockMarvelRepository.getSeriesCharacters(StubData.stubSeries.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseCharacter(
          data: CharacterData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCharacterList));
    });
    when(() => mockMarvelRepository.getSeriesStories(StubData.stubSeries.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseStory(
          data: StoryData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubStoryList));
    });
    when(() => mockMarvelRepository.getSeriesCreators(StubData.stubSeries.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseCreator(
          data: CreatorData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCreatorList));
    });
    when(() => mockMarvelRepository.getSeriesComics(StubData.stubSeries.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseComic(
          data: ComicData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubComicList));
    });
    when(() => mockRouter.push(CharactersRoute(filter: ApiFilter(series: StubData.stubSeries))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(StoriesRoute(filter: ApiFilter(series: StubData.stubSeries))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(CreatorsRoute(filter: ApiFilter(series: StubData.stubSeries))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(ComicsRoute(filter: ApiFilter(series: StubData.stubSeries))))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group("Series Details Bloc test", () {
    blocTest(
      'Emits [SeriesDetailsLoadingState] and [SeriesDetailsLoadedState] with loaded data when page is opened',
      build: () => SeriesDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesDetailsEvent.onPageOpened(series: StubData.stubSeries)),
      expect: () => [
        const SeriesDetailsState.loading(),
        const SeriesDetailsState.loaded(
          seriesCharacters: StubData.stubCharacterList,
          seriesCreators: StubData.stubCreatorList,
          seriesStories: StubData.stubStoryList,
          seriesComics: StubData.stubComicList,
        )
      ],
    );
    blocTest(
      'Open CharactersPage when See all Series Characters is tapped',
      build: () => SeriesDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesDetailsEvent.onSeeAllSeriesCharactersTapped(series: StubData.stubSeries)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CharactersRoute).args!.filter!.series, StubData.stubSeries);
      },
    );

    blocTest(
      'Open StoriesPage when See all Series Stories is tapped',
      build: () => SeriesDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesDetailsEvent.onSeeAllSeriesStoriesTapped(series: StubData.stubSeries)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter!.series, StubData.stubSeries);
      },
    );

    blocTest(
      'Open CreatorsPage when See all Series Creators is tapped',
      build: () => SeriesDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesDetailsEvent.onSeeAllSeriesCreatorsTapped(series: StubData.stubSeries)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CreatorsRoute).args!.filter!.series, StubData.stubSeries);
      },
    );

    blocTest(
      'Open ComicsPage when See all Series Comics is tapped',
      build: () => SeriesDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesDetailsEvent.onSeeAllSeriesComicsTapped(series: StubData.stubSeries)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicsRoute).args!.filter!.series, StubData.stubSeries);
      },
    );
  });
}
