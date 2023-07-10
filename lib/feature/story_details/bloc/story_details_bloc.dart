import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'story_details_event.dart';
part 'story_details_state.dart';
part 'story_details_bloc.freezed.dart';

class StoryDetailsBloc extends Bloc<StoryDetailsEvent, StoryDetailsState> {
  StoryDetailsBloc(this.marvelRepository, this.router) : super(const _StoryDetailsLoadingState()) {
    on<_StoryDetailsOnPageOpenedEvent>(_onStoryDetailsOnPageOpenedEvent);
    on<_StoryDetailsOnSeeAllStoryCharactersTappedEvent>(_onStoryDetailsOnSeeAllStoryCharactersTappedEvent);
    on<_StoryDetailsOnSeeAllStoryComicsTappedEvent>(_onStoryDetailsOnSeeAllStoryComicsTappedEvent);
    on<_StoryDetailsOnSeeAllStorySeriesTappedEvent>(_onStoryDetailsOnSeeAllStorySeriesTappedEvent);
    on<_StoryDetailsOnSeeAllStoryCreatorsTappedEvent>(_onStoryDetailsOnSeeAllStoryCreatorsTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onStoryDetailsOnPageOpenedEvent(
      _StoryDetailsOnPageOpenedEvent event, Emitter<StoryDetailsState> emit) async {
    emit(const StoryDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getStoryCharacters(event.story.id, 20, 0),
      marvelRepository.getStoryComics(event.story.id, 20, 0),
      marvelRepository.getStorySeries(event.story.id, 20, 0),
      marvelRepository.getStoryCreators(event.story.id, 20, 0),
    ]);
    emit(StoryDetailsState.loaded(
      storyCharacters: (data[0] as ApiResponseCharacter).data.results,
      storyComics: (data[1] as ApiResponseComic).data.results,
      storySeries: (data[2] as ApiResponseSeries).data.results,
      storyCreators: (data[3] as ApiResponseCreator).data.results,
    ));
  }

  FutureOr<void> _onStoryDetailsOnSeeAllStoryCharactersTappedEvent(
      _StoryDetailsOnSeeAllStoryCharactersTappedEvent event, Emitter<StoryDetailsState> emit) {
    router.push(CharactersRoute(filter: ApiFilter(story: event.story)));
  }

  FutureOr<void> _onStoryDetailsOnSeeAllStoryComicsTappedEvent(
      _StoryDetailsOnSeeAllStoryComicsTappedEvent event, Emitter<StoryDetailsState> emit) {
    router.push(ComicsRoute(filter: ApiFilter(story: event.story)));
  }

  FutureOr<void> _onStoryDetailsOnSeeAllStorySeriesTappedEvent(
      _StoryDetailsOnSeeAllStorySeriesTappedEvent event, Emitter<StoryDetailsState> emit) {
    router.push(SeriesRoute(filter: ApiFilter(story: event.story)));
  }

  FutureOr<void> _onStoryDetailsOnSeeAllStoryCreatorsTappedEvent(
      _StoryDetailsOnSeeAllStoryCreatorsTappedEvent event, Emitter<StoryDetailsState> emit) {
    router.push(CreatorsRoute(filter: ApiFilter(story: event.story)));
  }
}
