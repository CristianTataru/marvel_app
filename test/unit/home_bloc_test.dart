import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/home/bloc/home_bloc.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/character_data.dart';
import 'package:marvel_app/models/comic_data.dart';
import 'package:marvel_app/models/creator_data.dart';
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

    when(() => mockMarvelRepository.getCharacters(0)).thenAnswer((invocation) async => const ApiResponseCharacter(
        data: CharacterData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCharacterList)));
    when(() => mockMarvelRepository.getComics(0)).thenAnswer((invocation) async => const ApiResponseComic(
        data: ComicData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubComicList)));
    when(() => mockMarvelRepository.getSeries(0)).thenAnswer((invocation) async => const ApiResponseSeries(
        data: SeriesData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubSeriesList)));
    when(() => mockMarvelRepository.getStories(0)).thenAnswer((invocation) async => const ApiResponseStory(
        data: StoryData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubStoryList)));
    when(() => mockMarvelRepository.getCreators(0)).thenAnswer((invocation) async => const ApiResponseCreator(
        data: CreatorData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCreatorList)));
    when(() => mockRouter.push(CharactersRoute())).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(ComicsRoute())).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(SeriesRoute())).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(StoriesRoute())).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(CreatorsRoute())).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(StoryDetailsRoute(story: StubData.stubStory))).thenAnswer((invocation) async => null);
    when(() => mockRouter.push(CreatorDetailsRoute(creator: StubData.stubCreator)))
        .thenAnswer((invocation) async => null);
  });
  group("Home Bloc test", () {
    blocTest(
      'Emits [HomeLoadingState] and [HomeComicsLoadedState] with loaded data when app is opened',
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onAppStarted()),
      expect: () => [
        const HomeState.loading(),
        const HomeState.loaded(
            characters: StubData.stubCharacterList,
            comics: StubData.stubComicList,
            series: StubData.stubSeriesList,
            stories: StubData.stubStoryList,
            creators: StubData.stubCreatorList),
      ],
    );
    blocTest(
      "Open CharactersPage when Characters UserPick is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onCharactersPageTapped(characters: StubData.stubCharacterList)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CharactersRoute).args!.filter, null);
      },
    );
    blocTest(
      "Open ComicsPage when Comics UserPick is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onComicsPageTapped(comics: StubData.stubComicList)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicsRoute).args!.filter, null);
      },
    );
    blocTest(
      "Open SeriesPage when Series UserPick is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onSeriesPageTapped(series: StubData.stubSeriesList)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as SeriesRoute).args!.filter, null);
      },
    );
    blocTest(
      "Open StoriesPage when See all Stories is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onSeeAllStoriesTapped(stories: StubData.stubStoryList)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter, null);
      },
    );
    blocTest(
      "Open CreatorsPage when See all Creators is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onSeeAllCreatorsTapped(creators: StubData.stubCreatorList)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CreatorsRoute).args!.filter, null);
      },
    );
    blocTest(
      "Open StoryDetailsPage when StoryEntry is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onStoryTapped(story: StubData.stubStory)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoryDetailsRoute).args!.story, StubData.stubStory);
      },
    );
    blocTest(
      "Open CreatorDetailsPage when StoryEntry is tapped",
      build: () => HomeBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const HomeEvent.onCreatorTapped(creator: StubData.stubCreator)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CreatorDetailsRoute).args!.creator, StubData.stubCreator);
      },
    );
  });
}
