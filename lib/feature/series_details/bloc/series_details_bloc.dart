import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/api_response_story.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'series_details_event.dart';
part 'series_details_state.dart';
part 'series_details_bloc.freezed.dart';

@injectable
class SeriesDetailsBloc extends Bloc<SeriesDetailsEvent, SeriesDetailsState> {
  SeriesDetailsBloc(this.marvelRepository, this.router) : super(const _SeriesDetailsLoadingState()) {
    on<_SeriesDetailsOnPageOpenedEvent>(_onSeriesDetailsOnPageOpenedEvent);
    on<_SeriesDetailsOnSeeAllSeriesCharactersTappedEvent>(_onSeriesDetailsOnSeeAllSeriesCharactersTappedEvent);
    on<_SeriesDetailsOnSeeAllSeriesComicsTappedEvent>(_onSeriesDetailsOnSeeAllSeriesComicsTappedEvent);
    on<_SeriesDetailsOnSeeAllSeriesStoriesTappedEvent>(_onSeriesDetailsOnSeeAllSeriesStoriesTappedEvent);
    on<_SeriesDetailsOnSeeAllSeriesCreatorsTappedEvent>(_onSeriesDetailsOnSeeAllSeriesCreatorsTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onSeriesDetailsOnPageOpenedEvent(
      _SeriesDetailsOnPageOpenedEvent event, Emitter<SeriesDetailsState> emit) async {
    emit(const SeriesDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getSeriesCharacters(event.series.id, 20, 0),
      marvelRepository.getSeriesComics(event.series.id, 20, 0),
      marvelRepository.getSeriesStories(event.series.id, 20, 0),
      marvelRepository.getSeriesCreators(event.series.id, 20, 0),
    ]);
    emit(SeriesDetailsState.loaded(
      seriesCharacters: (data[0] as ApiResponseCharacter).data.results,
      seriesComics: (data[1] as ApiResponseComic).data.results,
      seriesStories: (data[2] as ApiResponseStory).data.results,
      seriesCreators: (data[3] as ApiResponseCreator).data.results,
    ));
  }

  FutureOr<void> _onSeriesDetailsOnSeeAllSeriesCharactersTappedEvent(
      _SeriesDetailsOnSeeAllSeriesCharactersTappedEvent event, Emitter<SeriesDetailsState> emit) {
    router.push(CharactersRoute(filter: ApiFilter(series: event.series)));
  }

  FutureOr<void> _onSeriesDetailsOnSeeAllSeriesComicsTappedEvent(
      _SeriesDetailsOnSeeAllSeriesComicsTappedEvent event, Emitter<SeriesDetailsState> emit) {
    router.push(ComicsRoute(filter: ApiFilter(series: event.series)));
  }

  FutureOr<void> _onSeriesDetailsOnSeeAllSeriesStoriesTappedEvent(
      _SeriesDetailsOnSeeAllSeriesStoriesTappedEvent event, Emitter<SeriesDetailsState> emit) {
    router.push(StoriesRoute(filter: ApiFilter(series: event.series)));
  }

  FutureOr<void> _onSeriesDetailsOnSeeAllSeriesCreatorsTappedEvent(
      _SeriesDetailsOnSeeAllSeriesCreatorsTappedEvent event, Emitter<SeriesDetailsState> emit) {
    router.push(CreatorsRoute(filter: ApiFilter(series: event.series)));
  }
}
