part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.onPageOpened() = _CharactersOnPageOpenedEvent;
  const factory CharactersEvent.onMoreDataLoading() = _CharactersMoreDataLoadingEvent;
  const factory CharactersEvent.onCharacterTapped({required Character character}) = _CharactersOnCharacterTappedEvent;
}
