import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/characters/bloc/characters_bloc.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/character_data.dart';
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
    when(() => mockMarvelRepository.getCharacters(0)).thenAnswer((invocation) async {
      return const ApiResponseCharacter(
          data: CharacterData(offset: 0, limit: 20, total: 22, count: 2, results: StubData.stubCharacterList));
    });
    when(() => mockMarvelRepository.getCharacters(20)).thenAnswer((invocation) async {
      return const ApiResponseCharacter(
          data: CharacterData(offset: 20, limit: 20, total: 22, count: 2, results: StubData.stubCharacterList));
    });
    when(() => mockRouter.push(CharacterDetailsRoute(character: StubData.stubCharacter)))
        .thenAnswer((invocation) async {
      return null;
    });
  });
  group('Characters Bloc test', () {
    blocTest(
      "Emits [CharactersLoadingState] and [CharactersLoadedState] with loaded data when page is opened",
      build: () => CharactersBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CharactersEvent.onPageOpened(filter: null)),
      expect: () => [
        const CharactersState.loading(),
        const CharactersState.loaded(canLoadMore: true, lastOffset: 0, characters: StubData.stubCharacterList)
      ],
    );
    blocTest(
      "Emits [CharactersMoreLoadingState] and [CharactersLoadedState] with loaded data on MoreDataLoading event",
      build: () => CharactersBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const CharactersEvent.onPageOpened(filter: null))
        ..add(const CharactersEvent.onMoreDataLoading(filter: null)),
      expect: () => [
        const CharactersState.loading(),
        const CharactersState.loaded(canLoadMore: true, lastOffset: 0, characters: StubData.stubCharacterList),
        const CharactersState.moreLoading(characters: StubData.stubCharacterList),
        const CharactersState.loaded(
            canLoadMore: false,
            lastOffset: 20,
            characters: [...StubData.stubCharacterList, ...StubData.stubCharacterList])
      ],
    );
    blocTest(
      "Open CharacterDetailsPage when Character is tapped",
      build: () => CharactersBloc(mockMarvelRepository, mockRouter),
      act: (bloc) => bloc.add(const CharactersEvent.onCharacterTapped(character: StubData.stubCharacter)),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as CharacterDetailsRoute).args!.character, StubData.stubCharacter);
      },
    );
  });
}
