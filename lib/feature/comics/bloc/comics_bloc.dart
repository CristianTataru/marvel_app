import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/comic.dart';

part 'comics_event.dart';
part 'comics_state.dart';
part 'comics_bloc.freezed.dart';

class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc() : super(const _ComicsLoadedState(canLoadMore: true, lastOffset: 0, comics: [])) {
    on<_ComicsOnPageOpenedEvent>(_onComicsOnPageOpenedEvent);
    on<_ComicsMoreDataLoadingEvent>(_onComicsMoreDataLoadingEvent);
  }

  FutureOr<void> _onComicsOnPageOpenedEvent(_ComicsOnPageOpenedEvent event, Emitter<ComicsState> emit) async {
    List<Comic> comics = await marvelRepository.getComics(0);
    emit(ComicsState.loaded(
        canLoadMore: marvelRepository.comicsTotal > 20 ? true : false, lastOffset: 0, comics: comics));
  }

  FutureOr<void> _onComicsMoreDataLoadingEvent(_ComicsMoreDataLoadingEvent event, Emitter<ComicsState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, comics) async {
        emit(ComicsState.moreLoading(comics: comics));
        int offset = lastOffset + 20;
        List<Comic> newComics = await marvelRepository.getComics(offset);
        emit(
          ComicsState.loaded(
              canLoadMore: marvelRepository.comicsTotal > (offset + 20) ? true : false,
              lastOffset: offset,
              comics: newComics),
        );
      },
    );
  }
}
