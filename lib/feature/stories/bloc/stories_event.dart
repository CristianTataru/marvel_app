part of 'stories_bloc.dart';

@freezed
class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.onPageOpened({required ApiFilter? filter}) = _StoriesOnPageOpenedEvent;
  const factory StoriesEvent.onMoreDataLoading({required ApiFilter? filter}) = _StoriesMoreDataLoadingEvent;
  const factory StoriesEvent.onStoryTapped({required Story story}) = _StoriesOnStoryTappedEvent;
}
