part of 'story_details_bloc.dart';

@freezed
class StoryDetailsEvent with _$StoryDetailsEvent {
  const factory StoryDetailsEvent.onPageOpened({required Story story}) = _StoryDetailsOnPageOpenedEvent;
  const factory StoryDetailsEvent.onSeeAllStoryCharactersTapped({required Story story}) =
      _StoryDetailsOnSeeAllStoryCharactersTappedEvent;
  const factory StoryDetailsEvent.onSeeAllStoryComicsTapped({required Story story}) =
      _StoryDetailsOnSeeAllStoryComicsTappedEvent;
  const factory StoryDetailsEvent.onSeeAllStorySeriesTapped({required Story story}) =
      _StoryDetailsOnSeeAllStorySeriesTappedEvent;
  const factory StoryDetailsEvent.onSeeAllStoryCreatorsTapped({required Story story}) =
      _StoryDetailsOnSeeAllStoryCreatorsTappedEvent;
}
