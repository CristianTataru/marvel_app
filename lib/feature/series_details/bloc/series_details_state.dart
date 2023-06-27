part of 'series_details_bloc.dart';

@freezed
class SeriesDetailsState with _$SeriesDetailsState {
  const factory SeriesDetailsState.loading() = _SeriesDetailsLoadingState;
  const factory SeriesDetailsState.loaded({
    required List<Character> seriesCharacters,
    required List<Comic> seriesComics,
    required List<Story> seriesStories,
    required List<Creator> seriesCreators,
  }) = _SeriesDetailsLoadedState;
}
