import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'character_details_event.dart';
part 'character_details_state.dart';
part 'character_details_bloc.freezed.dart';

class CharacterDetailsBloc extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc(this.marvelRepository, this.router) : super(const _CharacterDetailsLoadingState()) {
    on<_CharacterDetailsOnPageOpenedEvent>(_onCharacterDetailsOnPageOpenedEvent);
    on<_CharacterDetailsOnSeeAllCharacterComicsTappedEvent>(_onCharacterDetailsOnSeeAllCharacterComicsTappedEvent);
    on<_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent>(_onCharacterDetailsOnSeeAllCharacterStoriesTappedEvent);
    on<_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent>(_onCharacterDetailsOnSeeAllCharacterSeriesTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onCharacterDetailsOnPageOpenedEvent(
      _CharacterDetailsOnPageOpenedEvent event, Emitter<CharacterDetailsState> emit) async {
    emit(const CharacterDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getCharacterComics(event.character.id, 20, 0),
      marvelRepository.getCharacterSeries(event.character.id, 20, 0),
      marvelRepository.getCharacterStories(event.character.id, 20, 0),
    ]);
    emit(
      CharacterDetailsState.loaded(
        characterComics: (data[0] as ApiResponseComic).data.results,
        characterSeries: (data[1] as ApiResponseSeries).data.results,
        characterStories: (data[2] as ApiResponseStory).data.results,
      ),
    );
  }

  FutureOr<void> _onCharacterDetailsOnSeeAllCharacterComicsTappedEvent(
      _CharacterDetailsOnSeeAllCharacterComicsTappedEvent event, Emitter<CharacterDetailsState> emit) {
    router.push(ComicsRoute(filter: ApiFilter(character: event.character)));
  }

  FutureOr<void> _onCharacterDetailsOnSeeAllCharacterStoriesTappedEvent(
      _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent event, Emitter<CharacterDetailsState> emit) {
    router.push(StoriesRoute(filter: ApiFilter(character: event.character)));
  }

  FutureOr<void> _onCharacterDetailsOnSeeAllCharacterSeriesTappedEvent(
      _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent event, Emitter<CharacterDetailsState> emit) {
    router.push(SeriesRoute(filter: ApiFilter(character: event.character)));
  }
}
