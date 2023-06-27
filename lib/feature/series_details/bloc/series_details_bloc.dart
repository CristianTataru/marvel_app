import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

part 'series_details_event.dart';
part 'series_details_state.dart';
part 'series_details_bloc.freezed.dart';

class SeriesDetailsBloc extends Bloc<SeriesDetailsEvent, SeriesDetailsState> {
  SeriesDetailsBloc() : super(const _SeriesDetailsLoadingState()) {
    on<_SeriesDetailsOnPageOpenedEvent>(_onSeriesDetailsOnPageOpenedEvent);
  }

  FutureOr<void> _onSeriesDetailsOnPageOpenedEvent(
      _SeriesDetailsOnPageOpenedEvent event, Emitter<SeriesDetailsState> emit) async {
    emit(const SeriesDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getSeriesCharacters(event.series.id, 100),
      marvelRepository.getSeriesComics(event.series.id, 100),
      marvelRepository.getSeriesStories(event.series.id, 100),
      marvelRepository.getSeriesCreators(event.series.id, 100),
    ]);
    emit(SeriesDetailsState.loaded(
        seriesCharacters: data[0], seriesComics: data[1], seriesStories: data[2], seriesCreators: data[3]));
  }
}
