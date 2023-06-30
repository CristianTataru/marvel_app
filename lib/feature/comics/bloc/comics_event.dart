part of 'comics_bloc.dart';

@freezed
class ComicsEvent with _$ComicsEvent {
  const factory ComicsEvent.onPageOpened({
    required Character? character,
    required Creator? creator,
    required Series? series,
    required Story? story,
    required bool filtred,
  }) = _ComicsOnPageOpenedEvent;
  const factory ComicsEvent.onMoreDataLoading() = _ComicsMoreDataLoadingEvent;
  const factory ComicsEvent.onComicTapped({required Comic comic}) = _ComicOnComicTappedEvent;
}
