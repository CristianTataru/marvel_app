import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/creator_details/bloc/creator_details_bloc.dart';
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
    when(() => mockMarvelRepository.getCreatorComics(StubData.stubCreator.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseComic(
          data: ComicData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubComicList));
    });
    when(() => mockMarvelRepository.getCreatorSeries(StubData.stubCreator.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseSeries(
          data: SeriesData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubSeriesList));
    });
    when(() => mockMarvelRepository.getCreatorStories(StubData.stubCreator.id, 20, 0)).thenAnswer((invocation) async {
      return const ApiResponseStory(
          data: StoryData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubStoryList));
    });
    when(() => mockRouter.push(ComicsRoute(filter: ApiFilter(creator: StubData.stubCreator))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(StoriesRoute(filter: ApiFilter(creator: StubData.stubCreator))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockRouter.push(SeriesRoute(filter: ApiFilter(creator: StubData.stubCreator))))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group('Creator Details Bloc tests', () {
    blocTest(
      'Emits [CreatorDetailsLoadingState] and [CreatorDetailsLoadedState] with loaded data when page is opened',
      build: () => CreatorDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorDetailsEvent.onPageOpened(creator: StubData.stubCreator)),
      expect: () => [
        const CreatorDetailsState.loading(),
        const CreatorDetailsState.loaded(
            creatorComics: StubData.stubComicList,
            creatorSeries: StubData.stubSeriesList,
            creatorStories: StubData.stubStoryList),
      ],
    );
    blocTest(
      "Open ComicsPage when See all Creator Comics is tapped",
      build: () => CreatorDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorDetailsEvent.onSeeAllCreatorComicsTapped(creator: StubData.stubCreator)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicsRoute).args!.filter!.creator, StubData.stubCreator);
      },
    );
    blocTest(
      "Open StoriesPage when See all Creator Stories is tapped ",
      build: () => CreatorDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorDetailsEvent.onSeeAllCreatorStoriesTapped(creator: StubData.stubCreator)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter!.creator, StubData.stubCreator);
      },
    );
    blocTest(
      "Open SeriesPage when See all Creator Series is tapped ",
      build: () => CreatorDetailsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorDetailsEvent.onSeeAllCreatorSeriesTapped(creator: StubData.stubCreator)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as SeriesRoute).args!.filter!.creator, StubData.stubCreator);
      },
    );
  });
}
