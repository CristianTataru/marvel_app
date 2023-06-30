part of 'stories_bloc.dart';

@freezed
class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.onPageOpened() = _StoriesOnPageOpenedEvent;
  const factory StoriesEvent.onMoreDataLoading() = _StoriesMoreDataLoadingEvent;
  const factory StoriesEvent.onStoryTapped({required Story story}) = _StoriesOnStoryTappedEvent;
}
