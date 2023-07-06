import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/feature/characters/bloc/characters_bloc.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:mocktail/mocktail.dart';

import 'bloc_test_resources.dart';

void main() {
  late MockMarvelRepository mockMarvelRepository;
  late AppRouter router;

  setUp(() {
    mockMarvelRepository = MockMarvelRepository();
    router = MockAppRouter();
    when(() => mockMarvelRepository.getCharacters(0)).thenAnswer((invocation) async {
      return StubData.stubCharacterList;
    });
    when(() => mockMarvelRepository.getCharacters(20)).thenAnswer((invocation) async {
      return [...StubData.stubCharacterList, ...StubData.stubCharacterList];
    });
  });
  group('Characters Bloc test', () {
    blocTest(
      "Emits [CharactersLoadingState] and [CharactersLoadedState] with loaded data when page is opened",
      build: () => CharactersBloc(mockMarvelRepository, router),
      act: (bloc) => bloc.add(const CharactersEvent.onPageOpened(filter: null)),
      expect: () => [
        const CharactersState.loading(),
        const CharactersState.loaded(canLoadMore: true, lastOffset: 0, characters: StubData.stubCharacterList)
      ],
    );
    blocTest(
      "Emits [CharactersMoreLoadingState] and [LoadedState] with loaded data on MoreDataLoading event",
      build: () => CharactersBloc(mockMarvelRepository, router),
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
  });
}

class MockMarvelRepository extends Mock implements MarvelRepository {
  @override
  int charactersTotal = 22;
}

class MockAppRouter extends Mock implements AppRouter {}
