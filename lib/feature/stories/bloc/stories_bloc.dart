import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'stories_event.dart';
part 'stories_state.dart';
part 'stories_bloc.freezed.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc() : super(const _StoriesLoadedState(canLoadMore: true, lastOffset: 0, stories: [])) {
    on<_StoriesOnPageOpenedEvent>(_onStoriesOnPageOpenedEvent);
    on<_StoriesMoreDataLoadingEvent>(_onStoriesMoreDataLoadingEvent);
    on<_StoriesOnStoryTappedEvent>(_onStoriesOnStoryTappedEvent);
  }

  FutureOr<void> _onStoriesOnPageOpenedEvent(_StoriesOnPageOpenedEvent event, Emitter<StoriesState> emit) async {
    List<Story> stories = [];
    emit(const StoriesState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        stories = await marvelRepository.getCharacterStories(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.comic != null) {
        stories = await marvelRepository.getComicStories(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        stories = await marvelRepository.getSeriesStories(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        stories = await marvelRepository.getCreatorStories(event.filter!.creator!.id, 20, 0);
      }
    } else {
      stories = await marvelRepository.getStories(0);
    }
    emit(StoriesState.loaded(
        canLoadMore: marvelRepository.storiesTotal > 20 ? true : false, lastOffset: 0, stories: stories));
  }

  FutureOr<void> _onStoriesMoreDataLoadingEvent(_StoriesMoreDataLoadingEvent event, Emitter<StoriesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, stories) async {
        emit(StoriesState.moreLoading(stories: stories));
        int offset = lastOffset + 20;
        List<Story> newStories = [];
        if (event.filter != null) {
          if (event.filter!.character != null) {
            newStories = await marvelRepository.getCharacterStories(event.filter!.character!.id, 20, offset);
            newStories = [...stories, ...newStories];
          }
          if (event.filter!.comic != null) {
            newStories = await marvelRepository.getComicStories(event.filter!.comic!.id, 20, offset);
            newStories = [...stories, ...newStories];
          }
          if (event.filter!.series != null) {
            newStories = await marvelRepository.getSeriesStories(event.filter!.series!.id, 20, offset);
            newStories = [...stories, ...newStories];
          }
          if (event.filter!.creator != null) {
            newStories = await marvelRepository.getCreatorStories(event.filter!.creator!.id, 20, offset);
            newStories = [...stories, ...newStories];
          }
        } else {
          newStories = await marvelRepository.getStories(offset);
        }
        emit(StoriesState.loaded(
            canLoadMore: marvelRepository.storiesTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            stories: newStories));
      },
    );
  }

  FutureOr<void> _onStoriesOnStoryTappedEvent(_StoriesOnStoryTappedEvent event, Emitter<StoriesState> emit) {
    router.push(StoryDetailsRoute(story: event.story));
  }
}
