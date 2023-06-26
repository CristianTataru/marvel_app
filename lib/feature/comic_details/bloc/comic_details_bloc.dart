import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/story.dart';

part 'comic_details_event.dart';
part 'comic_details_state.dart';
part 'comic_details_bloc.freezed.dart';

class ComicDetailsBloc extends Bloc<ComicDetailsEvent, ComicDetailsState> {
  ComicDetailsBloc() : super(const _ComicDetailsLoadingState()) {
    on<_ComicDetailsOnPageOpenedEvent>(_onComicDetailsOnPageOpenedEvent);
  }

  FutureOr<void> _onComicDetailsOnPageOpenedEvent(
      _ComicDetailsOnPageOpenedEvent event, Emitter<ComicDetailsState> emit) async {
    emit(const ComicDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getComicCharacters(event.comic.id, 100),
      marvelRepository.getComicStories(event.comic.id, 100),
      marvelRepository.getComicCreators(event.comic.id, 100),
    ]);
    emit(
      ComicDetailsState.loaded(comicCharacters: data[0], comicStories: data[1], comicCreators: data[2]),
    );
  }
}
