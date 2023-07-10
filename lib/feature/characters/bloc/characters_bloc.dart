import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/repository/marvel_repository.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/api_response_character.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc(this.marvelRepository, this.router)
      : super(const _CharactersLoadedState(canLoadMore: true, lastOffset: 0, characters: [])) {
    on<_CharactersOnPageOpenedEvent>(_onCharactersOnPageOpenedEvent);
    on<_CharactersMoreDataLoadingEvent>(_onCharactersMoreDataLoadingEvent);
    on<_CharactersOnCharacterTappedEvent>(_onCharacterOnCharacterTappedEvent);
  }

  final MarvelRepository marvelRepository;
  final AppRouter router;

  FutureOr<void> _onCharactersOnPageOpenedEvent(
      _CharactersOnPageOpenedEvent event, Emitter<CharactersState> emit) async {
    late ApiResponseCharacter response;
    emit(const CharactersState.loading());
    if (event.filter != null) {
      if (event.filter!.comic != null) {
        response = await marvelRepository.getComicCharacters(event.filter!.comic!.id, 20, 0);
      }
      if (event.filter!.series != null) {
        response = await marvelRepository.getSeriesCharacters(event.filter!.series!.id, 20, 0);
      }
      if (event.filter!.story != null) {
        response = await marvelRepository.getStoryCharacters(event.filter!.story!.id, 20, 0);
      }
    } else {
      response = await marvelRepository.getCharacters(0);
    }
    emit(CharactersState.loaded(
        canLoadMore: response.data.total > 20 ? true : false, lastOffset: 0, characters: response.data.results));
  }

  FutureOr<void> _onCharactersMoreDataLoadingEvent(
      _CharactersMoreDataLoadingEvent event, Emitter<CharactersState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastOffset, characters) async {
        emit(CharactersState.moreLoading(characters: characters));
        int offset = lastOffset + 20;
        late ApiResponseCharacter response;
        if (event.filter != null) {
          if (event.filter!.comic != null) {
            response = await marvelRepository.getComicCharacters(event.filter!.comic!.id, 20, offset);
          }
          if (event.filter!.series != null) {
            response = await marvelRepository.getSeriesCharacters(event.filter!.series!.id, 20, offset);
          }
          if (event.filter!.story != null) {
            response = await marvelRepository.getStoryCharacters(event.filter!.story!.id, 20, offset);
          }
        } else {
          response = await marvelRepository.getCharacters(offset);
        }
        emit(CharactersState.loaded(
            canLoadMore: response.data.total > (offset + 20) ? true : false,
            lastOffset: offset,
            characters: [...characters, ...response.data.results]));
      },
    );
  }

  FutureOr<void> _onCharacterOnCharacterTappedEvent(
      _CharactersOnCharacterTappedEvent event, Emitter<CharactersState> emit) {
    router.push(CharacterDetailsRoute(character: event.character));
  }
}
