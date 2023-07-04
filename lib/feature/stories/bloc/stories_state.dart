part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.loading() = _StoriesLoadingState;
  const factory StoriesState.loaded({
    required bool canLoadMore,
    required int lastOffset,
    required List<Story> stories,
  }) = _StoriesLoadedState;
  const factory StoriesState.moreLoading({required List<Story> stories}) = _StoriesMoreLoadingState;
}
