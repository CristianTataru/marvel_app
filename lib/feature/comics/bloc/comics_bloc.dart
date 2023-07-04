import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'comics_event.dart';
part 'comics_state.dart';
part 'comics_bloc.freezed.dart';

class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc() : super(const _ComicsLoadedState(canLoadMore: true, lastOffset: 0, comics: [])) {
    on<_ComicsOnPageOpenedEvent>(_onComicsOnPageOpenedEvent);
    on<_ComicsMoreDataLoadingEvent>(_onComicsMoreDataLoadingEvent);
    on<_ComicOnComicTappedEvent>(_onComicOnComicTappedEvent);
  }

  FutureOr<void> _onComicsOnPageOpenedEvent(_ComicsOnPageOpenedEvent event, Emitter<ComicsState> emit) async {
    List<Comic> comics = [];
    emit(const ComicsState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        comics = await marvelRepository.getCharacterComics(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        comics = await marvelRepository.getCreatorComics(event.filter!.creator!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        comics = await marvelRepository.getSeriesComics(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        comics = await marvelRepository.getStoryComics(event.filter!.story!.id, 20, 0);
      }
    } else {
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
        List<Comic> newComics = [];
        if (event.filter != null) {
          if (event.filter!.character != null) {
            newComics = await marvelRepository.getCharacterComics(event.filter!.character!.id, 20, offset);
            newComics = [...comics, ...newComics];
          }
          if (event.filter!.creator != null) {
            newComics = await marvelRepository.getCreatorComics(event.filter!.creator!.id, 20, offset);
            newComics = [...comics, ...newComics];
          }
          if (event.filter!.series != null) {
            newComics = await marvelRepository.getSeriesComics(event.filter!.series!.id, 20, offset);
            newComics = [...comics, ...newComics];
          }
          if (event.filter!.story != null) {
            newComics = await marvelRepository.getStoryComics(event.filter!.story!.id, 20, offset);
            newComics = [...comics, ...newComics];
          }
        }
        if (event.filter == null) {
          newComics = await marvelRepository.getComics(offset);
        }
        emit(
          ComicsState.loaded(
              canLoadMore: marvelRepository.comicsTotal > (offset + 20) ? true : false,
              lastOffset: offset,
              comics: newComics),
        );
      },
    );
  }

  FutureOr<void> _onComicOnComicTappedEvent(_ComicOnComicTappedEvent event, Emitter<ComicsState> emit) {
    router.push(ComicDetailsRoute(comic: event.comic));
  }
}
