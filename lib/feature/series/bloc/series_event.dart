part of 'series_bloc.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.onPageOpened() = _SeriesOnPageOpenedEvent;
  const factory SeriesEvent.onMoreDataLoading() = _SeriesMoreDataLoadingEvent;
}
