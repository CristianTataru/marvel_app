import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

part 'story_details_event.dart';
part 'story_details_state.dart';
part 'story_details_bloc.freezed.dart';

class StoryDetailsBloc extends Bloc<StoryDetailsEvent, StoryDetailsState> {
  StoryDetailsBloc() : super(const _StoryDetailsLoadingState()) {
    on<_StoryDetailsOnPageOpenedEvent>(_onStoryDetailsOnPageOpenedEvent);
  }

  FutureOr<void> _onStoryDetailsOnPageOpenedEvent(
      _StoryDetailsOnPageOpenedEvent event, Emitter<StoryDetailsState> emit) async {
    emit(const StoryDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getStoryCharacters(event.story.id, 100),
      marvelRepository.getStoryComics(event.story.id, 100),
      marvelRepository.getStorySeries(event.story.id, 100),
      marvelRepository.getStoryCreators(event.story.id, 100),
    ]);
    emit(StoryDetailsState.loaded(
        storyCharacters: data[0], storyComics: data[1], storySeries: data[2], storyCreators: data[3]));
  }
}
