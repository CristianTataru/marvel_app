part of 'character_details_bloc.dart';

@freezed
class CharacterDetailsEvent with _$CharacterDetailsEvent {
  const factory CharacterDetailsEvent.onPageOpened({required Character character}) = _CharacterDetailsOnPageOpenedEvent;
  const factory CharacterDetailsEvent.onComicTapped({required Comic comic}) = _CharacterDetailsOnComicTappedEvent;
  const factory CharacterDetailsEvent.onSeeAllCharacterComicsTapped({required Character character}) =
      _CharacterDetailsOnSeeAllCharacterComicsTappedEvent;
  const factory CharacterDetailsEvent.onSeeAllCharacterStoriesTapped({required Character character}) =
      _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent;
  const factory CharacterDetailsEvent.onSeeAllCharacterSeriesTapped({required Character character}) =
      _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent;
}
