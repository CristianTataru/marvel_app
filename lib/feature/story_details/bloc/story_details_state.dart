part of 'story_details_bloc.dart';

@freezed
class StoryDetailsState with _$StoryDetailsState {
  const factory StoryDetailsState.loading() = _StoryDetailsLoadingState;
  const factory StoryDetailsState.loaded({
    required List<Character> storyCharacters,
    required List<Comic> storyComics,
    required List<Series> storySeries,
    required List<Creator> storyCreators,
  }) = _SeriesDetailsLoadedState;
}
