import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

part 'creator_details_event.dart';
part 'creator_details_state.dart';
part 'creator_details_bloc.freezed.dart';

class CreatorDetailsBloc extends Bloc<CreatorDetailsEvent, CreatorDetailsState> {
  CreatorDetailsBloc() : super(const _CreatorDetailsLoadingState()) {
    on<_CreatorDetailsOnPageOpenedEvent>(_onCreatorDetailsOnPageOpenedEvent);
  }

  FutureOr<void> _onCreatorDetailsOnPageOpenedEvent(
      _CreatorDetailsOnPageOpenedEvent event, Emitter<CreatorDetailsState> emit) async {
    emit(const CreatorDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getCreatorComics(event.creator.id, 100),
      marvelRepository.getCreatorSeries(event.creator.id, 100),
      marvelRepository.getCreatorStories(event.creator.id, 100),
    ]);
    emit(CreatorDetailsState.loaded(creatorComics: data[0], creatorSeries: data[1], creatorStories: data[2]));
  }
}
