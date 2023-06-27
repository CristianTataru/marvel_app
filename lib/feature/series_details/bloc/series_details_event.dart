part of 'series_details_bloc.dart';

@freezed
class SeriesDetailsEvent with _$SeriesDetailsEvent {
  const factory SeriesDetailsEvent.onPageOpened({required Series series}) = _SeriesDetailsOnPageOpenedEvent;
}
