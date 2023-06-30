import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'comics_event.dart';
part 'comics_state.dart';
part 'comics_bloc.freezed.dart';

class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc() : super(const _ComicsLoadedState(canLoadMore: true, lastOffset: 0, comics: [])) {
    on<_ComicsOnPageOpenedEvent>(_onComicsOnPageOpenedEvent);
    on<_ComicsMoreDataLoadingEvent>(_onComicsMoreDataLoadingEvent);
    on<_ComicOnComicTappedEvent>(_onComicOnCharacterTappedEvent);
  }

  FutureOr<void> _onComicsOnPageOpenedEvent(_ComicsOnPageOpenedEvent event, Emitter<ComicsState> emit) async {
    List<Comic> comics = [];
    if (event.character != null) {
      emit(const ComicsState.loading());
      comics = await marvelRepository.getCharacterComics(event.character!.id, 100);
    }
    if (event.creator != null) {}
    if (event.series != null) {}
    if (event.story != null) {}
    if (!event.filtred) {
      comics = await marvelRepository.getComics(0);
    }

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

  FutureOr<void> _onComicOnCharacterTappedEvent(_ComicOnComicTappedEvent event, Emitter<ComicsState> emit) {
    router.push(ComicDetailsRoute(comic: event.comic));
  }
}
