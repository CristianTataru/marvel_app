import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

part 'character_details_event.dart';
part 'character_details_state.dart';
part 'character_details_bloc.freezed.dart';

class CharacterDetailsBloc extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc() : super(const _CharacterDetailsLoadingState()) {
    on<_CharacterDetailsOnPageOpenedEvent>(_onCharacterDetailsOnPageOpenedEvent);
  }

  FutureOr<void> _onCharacterDetailsOnPageOpenedEvent(
      _CharacterDetailsOnPageOpenedEvent event, Emitter<CharacterDetailsState> emit) async {
    emit(const CharacterDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getCharacterComics(event.character.id, 100),
      marvelRepository.getCharacterSeries(event.character.id, 100),
      marvelRepository.getCharacterStories(event.character.id, 100),
    ]);
    emit(
      CharacterDetailsState.loaded(characterComics: data[0], characterSeries: data[1], characterStories: data[2]),
    );
  }
}
