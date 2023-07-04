import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.gr.dart';

part 'creator_details_event.dart';
part 'creator_details_state.dart';
part 'creator_details_bloc.freezed.dart';

class CreatorDetailsBloc extends Bloc<CreatorDetailsEvent, CreatorDetailsState> {
  CreatorDetailsBloc() : super(const _CreatorDetailsLoadingState()) {
    on<_CreatorDetailsOnPageOpenedEvent>(_onCreatorDetailsOnPageOpenedEvent);
    on<_CreatorDetailsOnSeeAllCreatorComicsTappedEvent>(_onCreatorDetailsOnSeeAllCreatorComicsTappedEvent);
    on<_CreatorDetailsOnSeeAllCreatorSeriesTappedEvent>(_onCreatorDetailsOnSeeAllCreatorSeriesTappedEvent);
    on<_CreatorDetailsOnSeeAllCreatorStoriesTappedEvent>(_onCreatorDetailsOnSeeAllCreatorStoriesTappedEvent);
  }

  FutureOr<void> _onCreatorDetailsOnPageOpenedEvent(
      _CreatorDetailsOnPageOpenedEvent event, Emitter<CreatorDetailsState> emit) async {
    emit(const CreatorDetailsState.loading());
    List<dynamic> data = await Future.wait([
      marvelRepository.getCreatorComics(event.creator.id, 20, 0),
      marvelRepository.getCreatorSeries(event.creator.id, 20, 0),
      marvelRepository.getCreatorStories(event.creator.id, 20, 0),
    ]);
    emit(CreatorDetailsState.loaded(creatorComics: data[0], creatorSeries: data[1], creatorStories: data[2]));
  }

  FutureOr<void> _onCreatorDetailsOnSeeAllCreatorComicsTappedEvent(
      _CreatorDetailsOnSeeAllCreatorComicsTappedEvent event, Emitter<CreatorDetailsState> emit) {
    router.push(ComicsRoute(filter: ApiFilter(creator: event.creator)));
  }

  FutureOr<void> _onCreatorDetailsOnSeeAllCreatorSeriesTappedEvent(
      _CreatorDetailsOnSeeAllCreatorSeriesTappedEvent event, Emitter<CreatorDetailsState> emit) {
    router.push(SeriesRoute(filter: ApiFilter(creator: event.creator)));
  }

  FutureOr<void> _onCreatorDetailsOnSeeAllCreatorStoriesTappedEvent(
      _CreatorDetailsOnSeeAllCreatorStoriesTappedEvent event, Emitter<CreatorDetailsState> emit) {
    router.push(StoriesRoute(filter: ApiFilter(creator: event.creator)));
  }
}
