part of 'comics_bloc.dart';

@freezed
class ComicsState with _$ComicsState {
  const factory ComicsState.loaded({required bool canLoadMore, required int lastOffset, required List<Comic> comics}) =
      _ComicsLoadedState;
  const factory ComicsState.moreLoading({required List<Comic> comics}) = _ComicsMoreLoadingState;
}
