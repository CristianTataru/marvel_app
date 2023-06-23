import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(const _CharactersLoadedState(canLoadMore: true, lastOffset: 0, characters: [])) {
    on<_CharactersOnPageOpenedEvent>(_onCharactersOnPageOpenedEvent);
    on<_CharactersMoreDataLoadingEvent>(_onCharactersMoreDataLoadingEvent);
  }

  FutureOr<void> _onCharactersOnPageOpenedEvent(
      _CharactersOnPageOpenedEvent event, Emitter<CharactersState> emit) async {
    List<Character> characters = await marvelRepository.getCharacters(0);
    emit(CharactersState.loaded(
        canLoadMore: marvelRepository.charactersTotal > 20 ? true : false, lastOffset: 0, characters: characters));
  }

  FutureOr<void> _onCharactersMoreDataLoadingEvent(
      _CharactersMoreDataLoadingEvent event, Emitter<CharactersState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, characters) async {
        emit(CharactersState.moreLoading(characters: characters));
        int offset = lastOffset + 20;
        List<Character> newCharacters = await marvelRepository.getCharacters(offset);
        emit(CharactersState.loaded(
            canLoadMore: marvelRepository.charactersTotal > (offset + 20) ? true : false,
            lastOffset: offset,
            characters: newCharacters));
      },
    );
  }
}
