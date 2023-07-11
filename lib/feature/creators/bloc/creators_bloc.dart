import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_creator.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'creators_event.dart';
part 'creators_state.dart';
part 'creators_bloc.freezed.dart';

@injectable
class CreatorsBloc extends Bloc<CreatorsEvent, CreatorsState> {
  CreatorsBloc(this.marvelRepository, this.router)
      : super(const _CreatorsLoadedState(canLoadMore: true, lastOffset: 0, creators: [])) {
    on<_CreatorsOnPageOpenedEvent>(_onCreatorsOnPageOpenedEvent);
    on<_CreatorsMoreDataLoadingEvent>(_onCreatorsMoreDataLoadingEvent);
    on<_CreatorsOnCreatorTappedEvent>(_onCreatorsOnCreatorTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onCreatorsOnPageOpenedEvent(_CreatorsOnPageOpenedEvent event, Emitter<CreatorsState> emit) async {
    late ApiResponseCreator response;
    emit(const CreatorsState.loading());
    if (event.filter != null) {
      if (event.filter!.comic != null) {
        response = await marvelRepository.getComicCreators(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        response = await marvelRepository.getSeriesCreators(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        response = await marvelRepository.getStoryCreators(event.filter!.story!.id, 20, 0);
      }
    } else {
      response = await marvelRepository.getCreators(0);
    }
    emit(CreatorsState.loaded(
        canLoadMore: response.data.total > 20 ? true : false, lastOffset: 0, creators: response.data.results));
  }

  FutureOr<void> _onCreatorsMoreDataLoadingEvent(
      _CreatorsMoreDataLoadingEvent event, Emitter<CreatorsState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, creators) async {
        emit(CreatorsState.moreLoading(creators: creators));
        int offset = lastOffset + 20;
        late ApiResponseCreator response;
        if (event.filter != null) {
          if (event.filter!.comic != null) {
            response = await marvelRepository.getComicCreators(event.filter!.comic!.id, 20, offset);
          }
          if (event.filter!.series != null) {
            response = await marvelRepository.getSeriesCreators(event.filter!.series!.id, 20, offset);
          }
          if (event.filter!.story != null) {
            response = await marvelRepository.getStoryCreators(event.filter!.story!.id, 20, offset);
          }
        } else {
          response = await marvelRepository.getCreators(offset);
        }
        emit(CreatorsState.loaded(
            canLoadMore: response.data.total > (offset + 20) ? true : false,
            lastOffset: offset,
            creators: [...creators, ...response.data.results]));
      },
    );
  }

  FutureOr<void> _onCreatorsOnCreatorTappedEvent(_CreatorsOnCreatorTappedEvent event, Emitter<CreatorsState> emit) {
    router.push(CreatorDetailsRoute(creator: event.creator));
  }
}
