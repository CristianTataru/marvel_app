import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/feature/character_details/bloc/character_details_bloc.dart';
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
    when(() => mockMarvelRepository.getCharacterComics(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return StubData.stubComicList;
    });
    when(() => mockMarvelRepository.getCharacterSeries(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return StubData.stubSeriesList;
    });
    when(() => mockMarvelRepository.getCharacterStories(StubData.stubCharacter.id, 20, 0))
        .thenAnswer((invocation) async {
      return StubData.stubStoryList;
    });
    when(() => mockAppRouter.push(ComicsRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockAppRouter.push(StoriesRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
    when(() => mockAppRouter.push(SeriesRoute(filter: ApiFilter(character: StubData.stubCharacter))))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group('Character Details Bloc tests', () {
    blocTest(
      'Emits [CharacterDetailsLoadingState] and [CharacterDetailsLoadedState] with loaded data when page is opened',
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockAppRouter),
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
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterComicsTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as ComicsRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
    blocTest(
      "Open StoriesPage when See all Character Stories is tapped ",
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterStoriesTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as StoriesRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
    blocTest(
      "Open SeriesPage when See all Character Series is tapped ",
      build: () => CharacterDetailsBloc(mockMarvelRepository, mockAppRouter),
      act: (bloc) =>
          bloc.add(const CharacterDetailsEvent.onSeeAllCharacterSeriesTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as SeriesRoute).args!.filter!.character, StubData.stubCharacter);
      },
    );
  });
}

class MockMarvelRepository extends Mock implements MarvelRepository {}

class MockAppRouter extends Mock implements AppRouter {}
