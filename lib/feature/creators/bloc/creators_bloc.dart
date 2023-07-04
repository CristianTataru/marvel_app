import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'creators_event.dart';
part 'creators_state.dart';
part 'creators_bloc.freezed.dart';

class CreatorsBloc extends Bloc<CreatorsEvent, CreatorsState> {
  CreatorsBloc() : super(const _CreatorsLoadedState(canLoadMore: true, lastOffset: 0, creators: [])) {
    on<_CreatorsOnPageOpenedEvent>(_onCreatorsOnPageOpenedEvent);
    on<_CreatorsMoreDataLoadingEvent>(_onCreatorsMoreDataLoadingEvent);
    on<_CreatorsOnCreatorTappedEvent>(_onCreatorsOnCreatorTappedEvent);
  }

  FutureOr<void> _onCreatorsOnPageOpenedEvent(_CreatorsOnPageOpenedEvent event, Emitter<CreatorsState> emit) async {
    List<Creator> creators = [];
    emit(const CreatorsState.loading());
    if (event.filter != null) {
      if (event.filter!.comic != null) {
        creators = await marvelRepository.getComicCreators(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        creators = await marvelRepository.getSeriesCreators(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        creators = await marvelRepository.getStoryCreators(event.filter!.story!.id, 20, 0);
      }
    } else {
      creators = await marvelRepository.getCreators(0);
    }
    emit(CreatorsState.loaded(
        canLoadMore: marvelRepository.creatorsTotal > 20 ? true : false, lastOffset: 0, creators: creators));
  }

  FutureOr<void> _onCreatorsMoreDataLoadingEvent(
      _CreatorsMoreDataLoadingEvent event, Emitter<CreatorsState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, creators) async {
        emit(CreatorsState.moreLoading(creators: creators));
        int offset = lastOffset + 20;
        List<Creator> newCreators = [];
        if (event.filter != null) {
          if (event.filter!.comic != null) {
            newCreators = await marvelRepository.getComicCreators(event.filter!.comic!.id, 20, offset);
            newCreators = [...creators, ...newCreators];
          }
          if (event.filter!.series != null) {
            newCreators = await marvelRepository.getSeriesCreators(event.filter!.series!.id, 20, offset);
            newCreators = [...creators, ...newCreators];
          }
          if (event.filter!.story != null) {
            newCreators = await marvelRepository.getStoryCreators(event.filter!.story!.id, 20, offset);
            newCreators = [...creators, ...newCreators];
          }
        } else {
          newCreators = await marvelRepository.getCreators(offset);
        }
        emit(CreatorsState.loaded(
            canLoadMore: marvelRepository.creatorsTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            creators: newCreators));
      },
    );
  }
}

FutureOr<void> _onCreatorsOnCreatorTappedEvent(_CreatorsOnCreatorTappedEvent event, Emitter<CreatorsState> emit) {
  router.push(CreatorDetailsRoute(creator: event.creator));
}
