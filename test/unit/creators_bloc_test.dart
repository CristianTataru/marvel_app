import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/creators/bloc/creators_bloc.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/creator_data.dart';
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

    when(() => mockMarvelRepository.getCreators(0)).thenAnswer((invocation) async {
      return const ApiResponseCreator(
          data: CreatorData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCreatorList));
    });
    when(() => mockMarvelRepository.getCreators(20)).thenAnswer((invocation) async {
      return const ApiResponseCreator(
          data: CreatorData(offset: 20, limit: 20, total: 22, count: 2, results: StubData.stubCreatorList));
    });
    when(() => mockRouter.push(CreatorDetailsRoute(creator: StubData.stubCreator))).thenAnswer((invocation) async {
      return null;
    });
  });
  group("Creators Bloc test", () {
    blocTest(
      'Emits [CreatorsLoadingState] and [CreatorsLoadedState] with loaded data when page is opened',
      build: () => CreatorsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorsEvent.onPageOpened(filter: null)),
      expect: () => [
        const CreatorsState.loading(),
        const CreatorsState.loaded(canLoadMore: true, lastOffset: 0, creators: StubData.stubCreatorList),
      ],
    );
    blocTest(
      "Emits [CreatorsMoreLoadingState] and [CreatorsLoadedState] with loaded data on MoreDataLoading event",
      build: () => CreatorsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const CreatorsEvent.onPageOpened(filter: null))
        ..add(const CreatorsEvent.onMoreDataLoading(filter: null)),
      expect: () => [
        const CreatorsState.loading(),
        const CreatorsState.loaded(canLoadMore: true, lastOffset: 0, creators: StubData.stubCreatorList),
        const CreatorsState.moreLoading(creators: StubData.stubCreatorList),
        const CreatorsState.loaded(
            canLoadMore: false, lastOffset: 20, creators: [...StubData.stubCreatorList, ...StubData.stubCreatorList])
      ],
    );
    blocTest(
      "Open CreatorDetailsPage when Creator is tapped",
      build: () => CreatorsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CreatorsEvent.onCreatorTapped(creator: StubData.stubCreator)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CreatorDetailsRoute).args!.creator, StubData.stubCreator);
      },
    );
  });
}
