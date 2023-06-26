part of 'comic_details_bloc.dart';

@freezed
class ComicDetailsState with _$ComicDetailsState {
  const factory ComicDetailsState.loading() = _ComicDetailsLoadingState;
  const factory ComicDetailsState.loaded({
    required List<Character> comicCharacters,
    required List<Creator> comicCreators,
    required List<Story> comicStories,
  }) = _ComicDetailsLoadedState;
}
