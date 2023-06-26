part of 'comics_bloc.dart';

@freezed
class ComicsEvent with _$ComicsEvent {
  const factory ComicsEvent.onPageOpened() = _ComicsOnPageOpenedEvent;
  const factory ComicsEvent.onMoreDataLoading() = _ComicsMoreDataLoadingEvent;
  const factory ComicsEvent.onComicTapped({required Comic comic}) = _ComicOnCharacterTappedEvent;
}
