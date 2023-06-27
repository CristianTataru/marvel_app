part of 'creator_details_bloc.dart';

@freezed
class CreatorDetailsState with _$CreatorDetailsState {
  const factory CreatorDetailsState.loading() = _CreatorDetailsLoadingState;
  const factory CreatorDetailsState.loaded({
    required List<Comic> creatorComics,
    required List<Series> creatorSeries,
    required List<Story> creatorStories,
  }) = _CreatorDetailsLoadedState;
}
