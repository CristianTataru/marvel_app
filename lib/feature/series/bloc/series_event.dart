part of 'series_bloc.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.onPageOpened({required ApiFilter? filter}) = _SeriesOnPageOpenedEvent;
  const factory SeriesEvent.onMoreDataLoading({required ApiFilter? filter}) = _SeriesMoreDataLoadingEvent;
  const factory SeriesEvent.onSeriesTapped({required Series series}) = _SeriesOnSeriesTappedEvent;
}
