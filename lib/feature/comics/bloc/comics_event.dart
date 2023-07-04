part of 'comics_bloc.dart';

@freezed
class ComicsEvent with _$ComicsEvent {
  const factory ComicsEvent.onPageOpened({
    required ApiFilter? filter,
  }) = _ComicsOnPageOpenedEvent;
  const factory ComicsEvent.onMoreDataLoading({
    required ApiFilter? filter,
  }) = _ComicsMoreDataLoadingEvent;
  const factory ComicsEvent.onComicTapped({required Comic comic}) = _ComicOnComicTappedEvent;
}
