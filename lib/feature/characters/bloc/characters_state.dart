part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.loaded({
    required bool canLoadMore,
    required int lastOffset,
    required List<Character> characters,
  }) = _CharactersLoadedState;
  const factory CharactersState.moreLoading({required List<Character> characters}) = _CharactersMoreLoadingState;
}
