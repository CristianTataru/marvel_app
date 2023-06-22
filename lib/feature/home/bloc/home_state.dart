part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.loaded({
    required List<Character> characters,
    required List<Comic> comics,
    required List<Series> series,
    required List<Story> stories,
    required List<Creator> creators,
  }) = _HomeLoadedState;
}
