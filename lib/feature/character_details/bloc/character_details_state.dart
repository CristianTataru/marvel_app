part of 'character_details_bloc.dart';

@freezed
class CharacterDetailsState with _$CharacterDetailsState {
  const factory CharacterDetailsState.loading() = _CharacterDetailsLoadingState;
  const factory CharacterDetailsState.loaded({
    required List<Comic> characterComics,
    required List<Series> characterSeries,
    required List<Story> characterStories,
  }) = _CharacterDetailsLoadedState;
}
