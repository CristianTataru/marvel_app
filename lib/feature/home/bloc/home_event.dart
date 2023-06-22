part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onAppStarted() = _HomeOnAppStartedEvent;
  const factory HomeEvent.onCharactersPageTapped() = _HomeOnCharactersPageTappedEvent;
}
