import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/feature/comic_details/bloc/comic_details_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';
import 'package:mocktail/mocktail.dart';

import 'bloc_test_resources.dart';

void main() {
  late MockMarvelRepository mockMarvelRepository;
  late MockAppRouter mockAppRouter;

  setUpAll(() {
    registerFallbackValue(const PageRouteInfo(''));
  });

  setUp(() {
    mockMarvelRepository = MockMarvelRepository();
    mockAppRouter = MockAppRouter();
    when(() => mockMarvelRepository.getComicCharacters(StubData.stubComic.id, 20, 0)).thenAnswer((invocation) async {
      return StubData.stubCharacterList;
    });
    when(() => mockMarvelRepository.getComicStories(StubData.stubComic.id, 20, 0)).thenAnswer((invocation) async {
      return StubData.stubStoryList;
    });
    when(() => mockMarvelRepository.getComicCreators(StubData.stubComic.id, 20, 0)).thenAnswer((invocation) async {
      return StubData.stubCreatorList;
    });
    when(() => mockAppRouter.push(CharactersRoute(filter: ApiFilter(comic: StubData.stubComic))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockAppRouter.push(StoriesRoute(filter: ApiFilter(comic: StubData.stubComic))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockAppRouter.push(CreatorsRoute(filter: ApiFilter(comic: StubData.stubComic))))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group("Comic Details Bloc test", () {
    blocTest(
      'Emits [ComicDetailsLoadingState] and [ComicDetailsLoadedState] with loaded data when page is opened',
      build: () => ComicDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) => bloc.add(const ComicDetailsEvent.onPageOpened(comic: StubData.stubComic)),
      expect: () => [
        const ComicDetailsState.loading(),
        const ComicDetailsState.loaded(
          comicCharacters: StubData.stubCharacterList,
          comicCreators: StubData.stubCreatorList,
          comicStories: StubData.stubStoryList,
        )
      ],
    );
    blocTest(
      'Open CharactersPage when See all Comic Characters is tapped',
      build: () => ComicDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) => bloc.add(const ComicDetailsEvent.onSeeAllComicCharactersTapped(comic: StubData.stubComic)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CharactersRoute).args!.filter!.comic, StubData.stubComic);
      },
    );

    blocTest(
      'Open StoriesPage when See all Comic Stories is tapped',
      build: () => ComicDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) => bloc.add(const ComicDetailsEvent.onSeeAllComicStoriesTapped(comic: StubData.stubComic)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter!.comic, StubData.stubComic);
      },
    );

    blocTest(
      'Open CreatorsPage when See all Comic Creators is tapped',
      build: () => ComicDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) => bloc.add(const ComicDetailsEvent.onSeeAllComicCreatorsTapped(comic: StubData.stubComic)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CreatorsRoute).args!.filter!.comic, StubData.stubComic);
      },
    );
  });
}

class MockMarvelRepository extends Mock implements MarvelRepository {}

class MockAppRouter extends Mock implements AppRouter {}
