part of 'series_bloc.dart';

@freezed
class SeriesState with _$SeriesState {
  const factory SeriesState.loaded({required bool canLoadMore, required int lastOffset, required List<Series> series}) =
      _SeriesLoadedState;
  const factory SeriesState.moreLoading({required List<Series> series}) = _SeriesMoreLoadingState;
}
