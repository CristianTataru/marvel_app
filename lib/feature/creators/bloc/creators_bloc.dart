import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
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
    List<Creator> creators = await marvelRepository.getCreators(0);
    emit(CreatorsState.loaded(
        canLoadMore: marvelRepository.charactersTotal > 20 ? true : false, lastOffset: 0, creators: creators));
  }

  FutureOr<void> _onCreatorsMoreDataLoadingEvent(
      _CreatorsMoreDataLoadingEvent event, Emitter<CreatorsState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, creators) async {
        emit(CreatorsState.moreLoading(creators: creators));
        int offset = lastOffset + 20;
        List<Creator> newCreators = await marvelRepository.getCreators(offset);
        emit(CreatorsState.loaded(
            canLoadMore: marvelRepository.charactersTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            creators: newCreators));
      },
    );
  }
}

FutureOr<void> _onCreatorsOnCreatorTappedEvent(_CreatorsOnCreatorTappedEvent event, Emitter<CreatorsState> emit) {
  router.push(CreatorDetailsRoute(creator: event.creator));
}
