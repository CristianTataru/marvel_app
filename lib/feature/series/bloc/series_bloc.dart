import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  SeriesBloc() : super(const _SeriesLoadedState(canLoadMore: true, lastOffset: 0, series: [])) {
    on<_SeriesOnPageOpenedEvent>(_onSeriesOnPageOpenedEvent);
    on<_SeriesMoreDataLoadingEvent>(_onSeriesMoreDataLoadingEvent);
    on<_SeriesOnSeriesTappedEvent>(_onSeriesOnSeriesTappedEvent);
  }

  FutureOr<void> _onSeriesOnPageOpenedEvent(_SeriesOnPageOpenedEvent event, Emitter<SeriesState> emit) async {
    List<Series> series = [];
    emit(const SeriesState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        series = await marvelRepository.getCharacterSeries(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        series = await marvelRepository.getCreatorSeries(event.filter!.creator!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        series = await marvelRepository.getStorySeries(event.filter!.story!.id, 20, 0);
      }
    } else {
      series = await marvelRepository.getSeries(0);
    }

    emit(SeriesState.loaded(
        canLoadMore: marvelRepository.seriesTotal > 20 ? true : false, lastOffset: 0, series: series));
  }

  FutureOr<void> _onSeriesMoreDataLoadingEvent(_SeriesMoreDataLoadingEvent event, Emitter<SeriesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, series) async {
        emit(SeriesState.moreLoading(series: series));
        int offset = lastOffset + 20;
        List<Series> newSeries = [];
        if (event.filter != null) {
          if (event.filter!.character != null) {
            newSeries = await marvelRepository.getCharacterSeries(event.filter!.character!.id, 20, offset);
            newSeries = [...series, ...newSeries];
          }
          if (event.filter!.creator != null) {
            newSeries = await marvelRepository.getCreatorSeries(event.filter!.creator!.id, 20, offset);
            newSeries = [...series, ...newSeries];
          }
          if (event.filter!.story != null) {
            newSeries = await marvelRepository.getStorySeries(event.filter!.story!.id, 20, offset);
            newSeries = [...series, ...newSeries];
          }
        } else {
          newSeries = await marvelRepository.getSeries(offset);
        }
        emit(
          SeriesState.loaded(
            canLoadMore: marvelRepository.seriesTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            series: newSeries,
          ),
        );
      },
    );
  }

  FutureOr<void> _onSeriesOnSeriesTappedEvent(_SeriesOnSeriesTappedEvent event, Emitter<SeriesState> emit) {
    router.push(SeriesDetailsRoute(series: event.series));
  }
}
