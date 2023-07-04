part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.onPageOpened({required ApiFilter? filter}) = _CharactersOnPageOpenedEvent;
  const factory CharactersEvent.onMoreDataLoading({required ApiFilter? filter}) = _CharactersMoreDataLoadingEvent;
  const factory CharactersEvent.onCharacterTapped({required Character character}) = _CharactersOnCharacterTappedEvent;
}
