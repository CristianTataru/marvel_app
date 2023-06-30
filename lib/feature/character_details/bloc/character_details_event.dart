part of 'character_details_bloc.dart';

@freezed
class CharacterDetailsEvent with _$CharacterDetailsEvent {
  const factory CharacterDetailsEvent.onPageOpened({required Character character}) = _CharacterDetailsOnPageOpenedEvent;
  const factory CharacterDetailsEvent.onComicTapped({required Comic comic}) = _CharacterDetailsOnComicTappedEvent;
  const factory CharacterDetailsEvent.onSeeAllCharacterComicsTapped({required Character character}) =
      _CharacterDetailsOnSeeAllCharacterComicsTappedEvent;
}
