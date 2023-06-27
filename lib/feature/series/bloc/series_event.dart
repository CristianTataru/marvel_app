part of 'series_bloc.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.onPageOpened() = _SeriesOnPageOpenedEvent;
  const factory SeriesEvent.onMoreDataLoading() = _SeriesMoreDataLoadingEvent;
  const factory SeriesEvent.onSeriesTapped({required Series series}) = _SeriesOnSeriesTappedEvent;
}
