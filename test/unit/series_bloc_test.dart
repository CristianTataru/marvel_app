import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/series/bloc/series_bloc.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/series_data.dart';
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

    when(() => mockMarvelRepository.getSeries(0)).thenAnswer((invocation) async {
      return const ApiResponseSeries(
          data: SeriesData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubSeriesList));
    });
    when(() => mockMarvelRepository.getSeries(20)).thenAnswer((invocation) async {
      return const ApiResponseSeries(
          data: SeriesData(offset: 20, limit: 20, total: 22, count: 2, results: StubData.stubSeriesList));
    });
    when(() => mockRouter.push(SeriesDetailsRoute(series: StubData.stubSeries))).thenAnswer((invocation) async {
      return null;
    });
  });
  group("Series Bloc test", () {
    blocTest(
      'Emits [SeriesLoadingState] and [SeriesLoadedState] with loaded data when page is opened',
      build: () => SeriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesEvent.onPageOpened(filter: null)),
      expect: () => [
        const SeriesState.loading(),
        const SeriesState.loaded(canLoadMore: true, lastOffset: 0, series: StubData.stubSeriesList),
      ],
    );
    blocTest(
      "Emits [SeriesMoreLoadingState] and [SeriesLoadedState] with loaded data on MoreDataLoading event",
      build: () => SeriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const SeriesEvent.onPageOpened(filter: null))
        ..add(const SeriesEvent.onMoreDataLoading(filter: null)),
      expect: () => [
        const SeriesState.loading(),
        const SeriesState.loaded(canLoadMore: true, lastOffset: 0, series: StubData.stubSeriesList),
        const SeriesState.moreLoading(series: StubData.stubSeriesList),
        const SeriesState.loaded(
            canLoadMore: false, lastOffset: 20, series: [...StubData.stubSeriesList, ...StubData.stubSeriesList])
      ],
    );
    blocTest(
      "Open SeriesDetailsPage when Series is tapped",
      build: () => SeriesBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const SeriesEvent.onSeriesTapped(series: StubData.stubSeries)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as SeriesDetailsRoute).args!.series, StubData.stubSeries);
      },
    );
  });
}
