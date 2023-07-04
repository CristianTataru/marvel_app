import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(const _CharactersLoadedState(canLoadMore: true, lastOffset: 0, characters: [])) {
    on<_CharactersOnPageOpenedEvent>(_onCharactersOnPageOpenedEvent);
    on<_CharactersMoreDataLoadingEvent>(_onCharactersMoreDataLoadingEvent);
    on<_CharactersOnCharacterTappedEvent>(_onCharacterOnCharacterTappedEvent);
  }

  FutureOr<void> _onCharactersOnPageOpenedEvent(
      _CharactersOnPageOpenedEvent event, Emitter<CharactersState> emit) async {
    List<Character> characters = [];
    emit(const CharactersState.loading());
    if (event.filter != null) {
      if (event.filter!.comic != null) {
        characters = await marvelRepository.getComicCharacters(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        characters = await marvelRepository.getSeriesCharacters(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        characters = await marvelRepository.getStoryCharacters(event.filter!.story!.id, 20, 0);
      }
    } else {
      characters = await marvelRepository.getCharacters(0);
    }
    emit(CharactersState.loaded(
        canLoadMore: marvelRepository.charactersTotal > 20 ? true : false, lastOffset: 0, characters: characters));
  }

  FutureOr<void> _onCharactersMoreDataLoadingEvent(
      _CharactersMoreDataLoadingEvent event, Emitter<CharactersState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, characters) async {
        emit(CharactersState.moreLoading(characters: characters));
        int offset = lastOffset + 20;
        List<Character> newCharacters = [];
        if (event.filter != null) {
          if (event.filter!.comic != null) {
            newCharacters = await marvelRepository.getComicCharacters(event.filter!.comic!.id, 20, offset);
            newCharacters = [...characters, ...newCharacters];
          }
          if (event.filter!.series != null) {
            newCharacters = await marvelRepository.getSeriesCharacters(event.filter!.series!.id, 20, offset);
            newCharacters = [...characters, ...newCharacters];
          }
          if (event.filter!.story != null) {
            newCharacters = await marvelRepository.getStoryCharacters(event.filter!.story!.id, 20, offset);
            newCharacters = [...characters, ...newCharacters];
          }
        } else {
          newCharacters = await marvelRepository.getCharacters(offset);
        }
        emit(CharactersState.loaded(
            canLoadMore: marvelRepository.charactersTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            characters: newCharacters));
      },
    );
  }

  FutureOr<void> _onCharacterOnCharacterTappedEvent(
      _CharactersOnCharacterTappedEvent event, Emitter<CharactersState> emit) {
    router.push(CharacterDetailsRoute(character: event.character));
  }
}
