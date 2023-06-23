part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onAppStarted() = _HomeOnAppStartedEvent;
  const factory HomeEvent.onCharactersPageTapped({
    required List<Character> characters,
  }) = _HomeOnCharactersPageTappedEvent;
  const factory HomeEvent.onComicsPageTapped({
    required List<Comic> comics,
  }) = _HomeOnComicsPageTappedEvent;
  const factory HomeEvent.onSeriesPageTapped({
    required List<Series> series,
  }) = _HomeOnSeriesPageTappedEvent;
}
