part of 'creators_bloc.dart';

@freezed
class CreatorsState with _$CreatorsState {
  const factory CreatorsState.loaded({
    required bool canLoadMore,
    required int lastOffset,
    required List<Creator> creators,
  }) = _CreatorsLoadedState;
  const factory CreatorsState.moreLoading({required List<Creator> creators}) = _CreatorsMoreLoadingState;
}
