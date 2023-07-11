import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_series.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

@injectable
class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  SeriesBloc(this.marvelRepository, this.router)
      : super(const _SeriesLoadedState(canLoadMore: true, lastOffset: 0, series: [])) {
    on<_SeriesOnPageOpenedEvent>(_onSeriesOnPageOpenedEvent);
    on<_SeriesMoreDataLoadingEvent>(_onSeriesMoreDataLoadingEvent);
    on<_SeriesOnSeriesTappedEvent>(_onSeriesOnSeriesTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onSeriesOnPageOpenedEvent(_SeriesOnPageOpenedEvent event, Emitter<SeriesState> emit) async {
    late ApiResponseSeries response;
    emit(const SeriesState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        response = await marvelRepository.getCharacterSeries(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        response = await marvelRepository.getCreatorSeries(event.filter!.creator!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        response = await marvelRepository.getStorySeries(event.filter!.story!.id, 20, 0);
      }
    } else {
      response = await marvelRepository.getSeries(0);
    }

    emit(SeriesState.loaded(
        canLoadMore: response.data.total > 20 ? true : false, lastOffset: 0, series: response.data.results));
  }

  FutureOr<void> _onSeriesMoreDataLoadingEvent(_SeriesMoreDataLoadingEvent event, Emitter<SeriesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, series) async {
        emit(SeriesState.moreLoading(series: series));
        int offset = lastOffset + 20;
        late ApiResponseSeries response;
        if (event.filter != null) {
          if (event.filter!.character != null) {
            response = await marvelRepository.getCharacterSeries(event.filter!.character!.id, 20, offset);
          }
          if (event.filter!.creator != null) {
            response = await marvelRepository.getCreatorSeries(event.filter!.creator!.id, 20, offset);
          }
          if (event.filter!.story != null) {
            response = await marvelRepository.getStorySeries(event.filter!.story!.id, 20, offset);
          }
        } else {
          response = await marvelRepository.getSeries(offset);
        }
        emit(
          SeriesState.loaded(
            canLoadMore: response.data.total > (offset + 20) ? true : false,
            lastOffset: offset,
            series: [...series, ...response.data.results],
          ),
        );
      },
    );
  }

  FutureOr<void> _onSeriesOnSeriesTappedEvent(_SeriesOnSeriesTappedEvent event, Emitter<SeriesState> emit) {
    router.push(SeriesDetailsRoute(series: event.series));
  }
}
