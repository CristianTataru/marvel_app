// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:marvel_app/feature/character_details/presentation/character_details_page.dart'
    as _i5;
import 'package:marvel_app/feature/characters/presentation/characters_page.dart'
    as _i2;
import 'package:marvel_app/feature/comic_details/presentation/comic_details_page.dart'
    as _i6;
import 'package:marvel_app/feature/comics/presentation/comics_page.dart' as _i3;
import 'package:marvel_app/feature/home/presentation/home_page.dart' as _i1;
import 'package:marvel_app/feature/series/presentation/series_page.dart' as _i4;
import 'package:marvel_app/feature/series_details/presentation/series_details_page.dart'
    as _i7;
import 'package:marvel_app/feature/story_details/presentation/story_details_page.dart'
    as _i8;
import 'package:marvel_app/models/character.dart' as _i10;
import 'package:marvel_app/models/comic.dart' as _i12;
import 'package:marvel_app/models/series.dart' as _i13;
import 'package:marvel_app/models/story.dart' as _i14;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CharactersRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CharactersPage(),
      );
    },
    ComicsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ComicsPage(),
      );
    },
    SeriesRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SeriesPage(),
      );
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CharacterDetailsPage(
          character: args.character,
          key: args.key,
        ),
      );
    },
    ComicDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicDetailsRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ComicDetailsPage(
          comic: args.comic,
          key: args.key,
        ),
      );
    },
    SeriesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesDetailsRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SeriesDetailsPage(
          series: args.series,
          key: args.key,
        ),
      );
    },
    StoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<StoryDetailsRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.StoryDetailsPage(
          story: args.story,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CharactersPage]
class CharactersRoute extends _i9.PageRouteInfo<void> {
  const CharactersRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ComicsPage]
class ComicsRoute extends _i9.PageRouteInfo<void> {
  const ComicsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ComicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ComicsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SeriesPage]
class SeriesRoute extends _i9.PageRouteInfo<void> {
  const SeriesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SeriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeriesRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CharacterDetailsPage]
class CharacterDetailsRoute
    extends _i9.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    required _i10.Character character,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          CharacterDetailsRoute.name,
          args: CharacterDetailsRouteArgs(
            character: character,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static const _i9.PageInfo<CharacterDetailsRouteArgs> page =
      _i9.PageInfo<CharacterDetailsRouteArgs>(name);
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    required this.character,
    this.key,
  });

  final _i10.Character character;

  final _i11.Key? key;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{character: $character, key: $key}';
  }
}

/// generated route for
/// [_i6.ComicDetailsPage]
class ComicDetailsRoute extends _i9.PageRouteInfo<ComicDetailsRouteArgs> {
  ComicDetailsRoute({
    required _i12.Comic comic,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ComicDetailsRoute.name,
          args: ComicDetailsRouteArgs(
            comic: comic,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ComicDetailsRoute';

  static const _i9.PageInfo<ComicDetailsRouteArgs> page =
      _i9.PageInfo<ComicDetailsRouteArgs>(name);
}

class ComicDetailsRouteArgs {
  const ComicDetailsRouteArgs({
    required this.comic,
    this.key,
  });

  final _i12.Comic comic;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ComicDetailsRouteArgs{comic: $comic, key: $key}';
  }
}

/// generated route for
/// [_i7.SeriesDetailsPage]
class SeriesDetailsRoute extends _i9.PageRouteInfo<SeriesDetailsRouteArgs> {
  SeriesDetailsRoute({
    required _i13.Series series,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SeriesDetailsRoute.name,
          args: SeriesDetailsRouteArgs(
            series: series,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SeriesDetailsRoute';

  static const _i9.PageInfo<SeriesDetailsRouteArgs> page =
      _i9.PageInfo<SeriesDetailsRouteArgs>(name);
}

class SeriesDetailsRouteArgs {
  const SeriesDetailsRouteArgs({
    required this.series,
    this.key,
  });

  final _i13.Series series;

  final _i11.Key? key;

  @override
  String toString() {
    return 'SeriesDetailsRouteArgs{series: $series, key: $key}';
  }
}

/// generated route for
/// [_i8.StoryDetailsPage]
class StoryDetailsRoute extends _i9.PageRouteInfo<StoryDetailsRouteArgs> {
  StoryDetailsRoute({
    required _i14.Story story,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          StoryDetailsRoute.name,
          args: StoryDetailsRouteArgs(
            story: story,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StoryDetailsRoute';

  static const _i9.PageInfo<StoryDetailsRouteArgs> page =
      _i9.PageInfo<StoryDetailsRouteArgs>(name);
}

class StoryDetailsRouteArgs {
  const StoryDetailsRouteArgs({
    required this.story,
    this.key,
  });

  final _i14.Story story;

  final _i11.Key? key;

  @override
  String toString() {
    return 'StoryDetailsRouteArgs{story: $story, key: $key}';
  }
}
