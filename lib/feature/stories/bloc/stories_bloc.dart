import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'stories_event.dart';
part 'stories_state.dart';
part 'stories_bloc.freezed.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc(this.marvelRepository, this.router)
      : super(const _StoriesLoadedState(canLoadMore: true, lastOffset: 0, stories: [])) {
    on<_StoriesOnPageOpenedEvent>(_onStoriesOnPageOpenedEvent);
    on<_StoriesMoreDataLoadingEvent>(_onStoriesMoreDataLoadingEvent);
    on<_StoriesOnStoryTappedEvent>(_onStoriesOnStoryTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onStoriesOnPageOpenedEvent(_StoriesOnPageOpenedEvent event, Emitter<StoriesState> emit) async {
    late ApiResponseStory response;
    emit(const StoriesState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        response = await marvelRepository.getCharacterStories(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.comic != null) {
        response = await marvelRepository.getComicStories(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        response = await marvelRepository.getSeriesStories(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        response = await marvelRepository.getCreatorStories(event.filter!.creator!.id, 20, 0);
      }
    } else {
      response = await marvelRepository.getStories(0);
    }
    emit(StoriesState.loaded(
        canLoadMore: response.data.total > 20 ? true : false, lastOffset: 0, stories: response.data.results));
  }

  FutureOr<void> _onStoriesMoreDataLoadingEvent(_StoriesMoreDataLoadingEvent event, Emitter<StoriesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, stories) async {
        emit(StoriesState.moreLoading(stories: stories));
        int offset = lastOffset + 20;
        late ApiResponseStory response;
        if (event.filter != null) {
          if (event.filter!.character != null) {
            response = await marvelRepository.getCharacterStories(event.filter!.character!.id, 20, offset);
          }
          if (event.filter!.comic != null) {
            response = await marvelRepository.getComicStories(event.filter!.comic!.id, 20, offset);
          }
          if (event.filter!.series != null) {
            response = await marvelRepository.getSeriesStories(event.filter!.series!.id, 20, offset);
          }
          if (event.filter!.creator != null) {
            response = await marvelRepository.getCreatorStories(event.filter!.creator!.id, 20, offset);
          }
        } else {
          response = await marvelRepository.getStories(offset);
        }
        emit(StoriesState.loaded(
            canLoadMore: response.data.total > (offset + 20) ? true : false,
            lastOffset: offset,
            stories: [...stories, ...response.data.results]));
      },
    );
  }

  FutureOr<void> _onStoriesOnStoryTappedEvent(_StoriesOnStoryTappedEvent event, Emitter<StoriesState> emit) {
    router.push(StoryDetailsRoute(story: event.story));
  }
}
