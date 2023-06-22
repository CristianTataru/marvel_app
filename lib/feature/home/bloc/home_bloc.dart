import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
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
  }

  FutureOr<void> _onHomeOnAppStartedEvent(_HomeOnAppStartedEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    List<Object> data = await Future.wait([
      marvelApi.getCharacters(0),
      marvelApi.getComics(0),
      marvelApi.getSeries(0),
      marvelApi.getStories(0),
      marvelApi.getCreators(0)
    ]);
    List<Story> stories = (data[3] as ApiResponseStory)
        .data
        .results
        .map(
          (story) => Story(
            id: story.id,
            title: HtmlUnescape().convert(story.title),
          ),
        )
        .toList();
    emit(
      HomeState.loaded(
        characters: (data[0] as ApiResponseCharacter).data.results,
        comics: (data[1] as ApiResponseComic).data.results,
        series: (data[2] as ApiResponseSeries).data.results,
        stories: stories,
        creators: (data[4] as ApiResponseCreator).data.results,
      ),
    );
  }

  FutureOr<void> _onHomeOnCharactersPageTappedEvent(_HomeOnCharactersPageTappedEvent event, Emitter<HomeState> emit) {
    router.push(const CharactersRoute());
  }
}
