import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_comic.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'comics_event.dart';
part 'comics_state.dart';
part 'comics_bloc.freezed.dart';

@injectable
class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc(this.marvelRepository, this.router)
      : super(const _ComicsLoadedState(canLoadMore: true, lastOffset: 0, comics: [])) {
    on<_ComicsOnPageOpenedEvent>(_onComicsOnPageOpenedEvent);
    on<_ComicsMoreDataLoadingEvent>(_onComicsMoreDataLoadingEvent);
    on<_ComicOnComicTappedEvent>(_onComicOnComicTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onComicsOnPageOpenedEvent(_ComicsOnPageOpenedEvent event, Emitter<ComicsState> emit) async {
    late ApiResponseComic response;
    emit(const ComicsState.loading());
    if (event.filter != null) {
      if (event.filter!.character != null) {
        response = await marvelRepository.getCharacterComics(event.filter!.character!.id, 20, 0);
      }
      if (event.filter!.creator != null) {
        response = await marvelRepository.getCreatorComics(event.filter!.creator!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        response = await marvelRepository.getSeriesComics(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        response = await marvelRepository.getStoryComics(event.filter!.story!.id, 20, 0);
      }
    } else {
      response = await marvelRepository.getComics(0);
    }
    emit(ComicsState.loaded(
        canLoadMore: response.data.total > 20 ? true : false, lastOffset: 0, comics: response.data.results));
  }

  FutureOr<void> _onComicsMoreDataLoadingEvent(_ComicsMoreDataLoadingEvent event, Emitter<ComicsState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, comics) async {
        emit(ComicsState.moreLoading(comics: comics));
        int offset = lastOffset + 20;
        late ApiResponseComic response;
        if (event.filter != null) {
          if (event.filter!.character != null) {
            response = await marvelRepository.getCharacterComics(event.filter!.character!.id, 20, offset);
          }
          if (event.filter!.creator != null) {
            response = await marvelRepository.getCreatorComics(event.filter!.creator!.id, 20, offset);
          }
          if (event.filter!.series != null) {
            response = await marvelRepository.getSeriesComics(event.filter!.series!.id, 20, offset);
          }
          if (event.filter!.story != null) {
            response = await marvelRepository.getStoryComics(event.filter!.story!.id, 20, offset);
          }
        }
        if (event.filter == null) {
          response = await marvelRepository.getComics(offset);
        }
        emit(
          ComicsState.loaded(
              canLoadMore: response.data.total > (offset + 20) ? true : false,
              lastOffset: offset,
              comics: [...comics, ...response.data.results]),
        );
      },
    );
  }

  FutureOr<void> _onComicOnComicTappedEvent(_ComicOnComicTappedEvent event, Emitter<ComicsState> emit) {
    router.push(ComicDetailsRoute(comic: event.comic));
  }
}
