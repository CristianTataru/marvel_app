part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onAppStarted() = _HomeOnAppStartedEvent;
  const factory HomeEvent.onCharactersPageTapped({required List<Character> characters}) =
      _HomeOnCharactersPageTappedEvent;
  const factory HomeEvent.onComicsPageTapped({required List<Comic> comics}) = _HomeOnComicsPageTappedEvent;
  const factory HomeEvent.onSeriesPageTapped({required List<Series> series}) = _HomeOnSeriesPageTappedEvent;
  const factory HomeEvent.onStoryTapped({required Story story}) = _HomeOnStoryTappedEvent;
  const factory HomeEvent.onCreatorTapped({required Creator creator}) = _HomeOnCreatorTappedEvent;
  const factory HomeEvent.onSeeAllStoriesTapped({required List<Story> stories}) = _HomeOnSeeAllStoriesTappedEvent;
  const factory HomeEvent.onSeeAllCreatorsTapped({required List<Creator> creators}) = _HomeOnSeeAllCreatorsTappedEvent;
}
