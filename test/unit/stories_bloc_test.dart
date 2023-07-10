import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/stories/bloc/stories_bloc.dart';
import 'package:marvel_app/models/api_response_story.dart';
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

    when(() => mockMarvelRepository.getStories(0)).thenAnswer((invocation) async {
      return const ApiResponseStory(
          data: StoryData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubStoryList));
    });
    when(() => mockMarvelRepository.getStories(20)).thenAnswer((invocation) async {
      return const ApiResponseStory(
          data: StoryData(offset: 20, limit: 20, total: 22, count: 2, results: StubData.stubStoryList));
    });
    when(() => mockRouter.push(StoryDetailsRoute(story: StubData.stubStory))).thenAnswer((invocation) async {
      return null;
    });
  });
  group("Stories Bloc test", () {
    blocTest(
      'Emits [StoriesLoadingState] and [StoriesLoadedState] with loaded data when page is opened',
      build: () => StoriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const StoriesEvent.onPageOpened(filter: null)),
      expect: () => [
        const StoriesState.loading(),
        const StoriesState.loaded(canLoadMore: true, lastOffset: 0, stories: StubData.stubStoryList),
      ],
    );
    blocTest(
      "Emits [StoriesMoreLoadingState] and [StoriesLoadedState] with loaded data on MoreDataLoading event",
      build: () => StoriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const StoriesEvent.onPageOpened(filter: null))
        ..add(const StoriesEvent.onMoreDataLoading(filter: null)),
      expect: () => [
        const StoriesState.loading(),
        const StoriesState.loaded(canLoadMore: true, lastOffset: 0, stories: StubData.stubStoryList),
        const StoriesState.moreLoading(stories: StubData.stubStoryList),
        const StoriesState.loaded(
            canLoadMore: false, lastOffset: 20, stories: [...StubData.stubStoryList, ...StubData.stubStoryList])
      ],
    );
    blocTest(
      "Open StoryDetailsPage when Story is tapped",
      build: () => StoriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const StoriesEvent.onStoryTapped(story: StubData.stubStory)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoryDetailsRoute).args!.story, StubData.stubStory);
      },
    );
  });
}
