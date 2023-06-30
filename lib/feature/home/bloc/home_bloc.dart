import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeLoadingState()) {
    on<_HomeOnAppStartedEvent>(_onHomeOnAppStartedEvent);
    on<_HomeOnCharactersPageTappedEvent>(_onHomeOnCharactersPageTappedEvent);
    on<_HomeOnComicsPageTappedEvent>(_onHomeOnComicsPageTappedEvent);
    on<_HomeOnSeriesPageTappedEvent>(_onHomeOnSeriesPageTappedEvent);
    on<_HomeOnStoryTappedEvent>(_onHomeOnStoryTappedEvent);
    on<_HomeOnCreatorTappedEvent>(_onHomeOnCreatorTappedEvent);
    on<_HomeOnSeeAllStoriesTappedEvent>(_onHomeOnSeeAllStoriesTappedEvent);
    on<_HomeOnSeeAllCreatorsTappedEvent>(_onHomeOnSeeAllCreatorsTappedEvent);
  }

  FutureOr<void> _onHomeOnAppStartedEvent(_HomeOnAppStartedEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    List<Object> data = await Future.wait([
      marvelRepository.getCharacters(0),
      marvelRepository.getComics(0),
      marvelRepository.getSeries(0),
      marvelRepository.getStories(0),
      marvelRepository.getCreators(0)
    ]);
    emit(
      HomeState.loaded(
        characters: data[0] as List<Character>,
        comics: data[1] as List<Comic>,
        series: data[2] as List<Series>,
        stories: data[3] as List<Story>,
        creators: data[4] as List<Creator>,
      ),
    );
  }

  FutureOr<void> _onHomeOnCharactersPageTappedEvent(_HomeOnCharactersPageTappedEvent event, Emitter<HomeState> emit) {
    router.push(const CharactersRoute());
  }

  FutureOr<void> _onHomeOnComicsPageTappedEvent(_HomeOnComicsPageTappedEvent event, Emitter<HomeState> emit) {
    router.push(ComicsRoute(filtered: false));
  }

  FutureOr<void> _onHomeOnSeriesPageTappedEvent(_HomeOnSeriesPageTappedEvent event, Emitter<HomeState> emit) {
    router.push(const SeriesRoute());
  }

  FutureOr<void> _onHomeOnStoryTappedEvent(_HomeOnStoryTappedEvent event, Emitter<HomeState> emit) {
    router.push(StoryDetailsRoute(story: event.story));
  }

  FutureOr<void> _onHomeOnCreatorTappedEvent(_HomeOnCreatorTappedEvent event, Emitter<HomeState> emit) {
    router.push(CreatorDetailsRoute(creator: event.creator));
  }

  FutureOr<void> _onHomeOnSeeAllStoriesTappedEvent(_HomeOnSeeAllStoriesTappedEvent event, Emitter<HomeState> emit) {
    router.push(const StoriesRoute());
  }

  FutureOr<void> _onHomeOnSeeAllCreatorsTappedEvent(_HomeOnSeeAllCreatorsTappedEvent event, Emitter<HomeState> emit) {
    router.push(const CreatorsRoute());
  }
}
