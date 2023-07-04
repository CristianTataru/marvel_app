part of 'series_details_bloc.dart';

@freezed
class SeriesDetailsEvent with _$SeriesDetailsEvent {
  const factory SeriesDetailsEvent.onPageOpened({required Series series}) = _SeriesDetailsOnPageOpenedEvent;
  const factory SeriesDetailsEvent.onSeeAllSeriesCharactersTapped({required Series series}) =
      _SeriesDetailsOnSeeAllSeriesCharactersTappedEvent;
  const factory SeriesDetailsEvent.onSeeAllSeriesComicsTapped({required Series series}) =
      _SeriesDetailsOnSeeAllSeriesComicsTappedEvent;
  const factory SeriesDetailsEvent.onSeeAllSeriesStoriesTapped({required Series series}) =
      _SeriesDetailsOnSeeAllSeriesStoriesTappedEvent;
  const factory SeriesDetailsEvent.onSeeAllSeriesCreatorsTapped({required Series series}) =
      _SeriesDetailsOnSeeAllSeriesCreatorsTappedEvent;
}
