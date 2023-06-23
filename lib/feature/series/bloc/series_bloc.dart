import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/series.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  SeriesBloc() : super(const _SeriesLoadedState(canLoadMore: true, lastOffset: 0, series: [])) {
    on<_SeriesOnPageOpenedEvent>(_onSeriesOnPageOpenedEvent);
    on<_SeriesMoreDataLoadingEvent>(_onSeriesMoreDataLoadingEvent);
  }

  FutureOr<void> _onSeriesOnPageOpenedEvent(_SeriesOnPageOpenedEvent event, Emitter<SeriesState> emit) async {
    List<Series> series = await marvelRepository.getSeries(0);
    emit(SeriesState.loaded(
        canLoadMore: marvelRepository.seriesTotal > 20 ? true : false, lastOffset: 0, series: series));
  }

  FutureOr<void> _onSeriesMoreDataLoadingEvent(_SeriesMoreDataLoadingEvent event, Emitter<SeriesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, series) async {
        emit(SeriesState.moreLoading(series: series));
        int offset = lastOffset + 20;
        List<Series> newSeries = await marvelRepository.getSeries(offset);
        emit(SeriesState.loaded(
            canLoadMore: marvelRepository.seriesTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            series: newSeries));
      },
    );
  }
}
