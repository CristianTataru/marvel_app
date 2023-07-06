import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'comic_details_event.dart';
part 'comic_details_state.dart';
part 'comic_details_bloc.freezed.dart';

class ComicDetailsBloc extends Bloc<ComicDetailsEvent, ComicDetailsState> {
  ComicDetailsBloc(this.marvelRepository, this.router) : super(const _ComicDetailsLoadingState()) {
    on<_ComicDetailsOnPageOpenedEvent>(_onComicDetailsOnPageOpenedEvent);
    on<_ComicDetailsOnSeeAllComicCharactersTappedEvent>(_onComicDetailsOnSeeAllComicCharactersTappedEvent);
    on<_ComicDetailsOnSeeAllComicStoriesTappedEvent>(_onComicDetailsOnSeeAllComicStoriesTappedEvent);
    on<_ComicDetailsOnSeeAllComicCreatorsTappedEvent>(_onComicDetailsOnSeeAllComicCreatorsTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onComicDetailsOnPageOpenedEvent(
      _ComicDetailsOnPageOpenedEvent event, Emitter<ComicDetailsState> emit) async {
    emit(const ComicDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getComicCharacters(event.comic.id, 20, 0),
      marvelRepository.getComicStories(event.comic.id, 20, 0),
      marvelRepository.getComicCreators(event.comic.id, 20, 0),
    ]);
    emit(
      ComicDetailsState.loaded(comicCharacters: data[0], comicStories: data[1], comicCreators: data[2]),
    );
  }

  FutureOr<void> _onComicDetailsOnSeeAllComicCharactersTappedEvent(
      _ComicDetailsOnSeeAllComicCharactersTappedEvent event, Emitter<ComicDetailsState> emit) {
    router.push(CharactersRoute(filter: ApiFilter(comic: event.comic)));
  }

  FutureOr<void> _onComicDetailsOnSeeAllComicStoriesTappedEvent(
      _ComicDetailsOnSeeAllComicStoriesTappedEvent event, Emitter<ComicDetailsState> emit) {
    router.push(StoriesRoute(filter: ApiFilter(comic: event.comic)));
  }

  FutureOr<void> _onComicDetailsOnSeeAllComicCreatorsTappedEvent(
      _ComicDetailsOnSeeAllComicCreatorsTappedEvent event, Emitter<ComicDetailsState> emit) {
    router.push(CreatorsRoute(filter: ApiFilter(comic: event.comic)));
  }
}
