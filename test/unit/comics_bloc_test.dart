import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/comics/bloc/comics_bloc.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/comic_data.dart';
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

    when(() => mockMarvelRepository.getComics(0)).thenAnswer((invocation) async {
      return const ApiResponseComic(
          data: ComicData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubComicList));
    });
    when(() => mockMarvelRepository.getComics(20)).thenAnswer((invocation) async {
      return const ApiResponseComic(
          data: ComicData(offset: 20, limit: 20, total: 22, count: 2, results: StubData.stubComicList));
    });
    when(() => mockRouter.push(ComicDetailsRoute(comic: StubData.stubComic))).thenAnswer((invocation) async {
      return null;
    });
  });
  group("Comics Bloc test", () {
    blocTest(
      'Emits [ComicsLoadingState] and [ComicsLoadedState] with loaded data when page is opened',
      build: () => ComicsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const ComicsEvent.onPageOpened(filter: null)),
      expect: () => [
        const ComicsState.loading(),
        const ComicsState.loaded(canLoadMore: true, lastOffset: 0, comics: StubData.stubComicList),
      ],
    );
    blocTest(
      "Emits [ComicsMoreLoadingState] and [ComicsLoadedState] with loaded data on MoreDataLoading event",
      build: () => ComicsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const ComicsEvent.onPageOpened(filter: null))
        ..add(const ComicsEvent.onMoreDataLoading(filter: null)),
      expect: () => [
        const ComicsState.loading(),
        const ComicsState.loaded(canLoadMore: true, lastOffset: 0, comics: StubData.stubComicList),
        const ComicsState.moreLoading(comics: StubData.stubComicList),
        const ComicsState.loaded(
            canLoadMore: false, lastOffset: 20, comics: [...StubData.stubComicList, ...StubData.stubComicList])
      ],
    );
    blocTest(
      "Open ComicDetailsPage when Comic is tapped",
      build: () => ComicsBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const ComicsEvent.onComicTapped(comic: StubData.stubComic)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicDetailsRoute).args!.comic, StubData.stubComic);
      },
    );
  });
}
