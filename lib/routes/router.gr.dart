// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:marvel_app/feature/character_details/presentation/character_details_page.dart'
    as _i5;
import 'package:marvel_app/feature/characters/presentation/characters_page.dart'
    as _i2;
import 'package:marvel_app/feature/comic_details/presentation/comic_details_page.dart'
    as _i6;
import 'package:marvel_app/feature/comics/presentation/comics_page.dart' as _i3;
import 'package:marvel_app/feature/creator_details/presentation/creator_details_page.dart'
    as _i9;
import 'package:marvel_app/feature/creators/presentation/creators_page.dart'
    as _i11;
import 'package:marvel_app/feature/home/presentation/home_page.dart' as _i1;
import 'package:marvel_app/feature/series/presentation/series_page.dart' as _i4;
import 'package:marvel_app/feature/series_details/presentation/series_details_page.dart'
    as _i7;
import 'package:marvel_app/feature/stories/presentation/stories_page.dart'
    as _i10;
import 'package:marvel_app/feature/story_details/presentation/story_details_page.dart'
    as _i8;
import 'package:marvel_app/models/api_filters.dart' as _i14;
import 'package:marvel_app/models/character.dart' as _i15;
import 'package:marvel_app/models/comic.dart' as _i16;
import 'package:marvel_app/models/creator.dart' as _i19;
import 'package:marvel_app/models/series.dart' as _i17;
import 'package:marvel_app/models/story.dart' as _i18;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CharactersRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersRouteArgs>(
          orElse: () => const CharactersRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CharactersPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    ComicsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicsRouteArgs>(
          orElse: () => const ComicsRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ComicsPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    SeriesRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesRouteArgs>(
          orElse: () => const SeriesRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SeriesPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CharacterDetailsPage(
          character: args.character,
          key: args.key,
        ),
      );
    },
    ComicDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ComicDetailsPage(
          comic: args.comic,
          key: args.key,
        ),
      );
    },
    SeriesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SeriesDetailsPage(
          series: args.series,
          key: args.key,
        ),
      );
    },
    StoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<StoryDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.StoryDetailsPage(
          story: args.story,
          key: args.key,
        ),
      );
    },
    CreatorDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CreatorDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.CreatorDetailsPage(
          creator: args.creator,
          key: args.key,
        ),
      );
    },
    StoriesRoute.name: (routeData) {
      final args = routeData.argsAs<StoriesRouteArgs>(
          orElse: () => const StoriesRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.StoriesPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    CreatorsRoute.name: (routeData) {
      final args = routeData.argsAs<CreatorsRouteArgs>(
          orElse: () => const CreatorsRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.CreatorsPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CharactersPage]
class CharactersRoute extends _i12.PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute({
    _i13.Key? key,
    _i14.ApiFilter? filter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CharactersRoute.name,
          args: CharactersRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static const _i12.PageInfo<CharactersRouteArgs> page =
      _i12.PageInfo<CharactersRouteArgs>(name);
}

class CharactersRouteArgs {
  const CharactersRouteArgs({
    this.key,
    this.filter,
  });

  final _i13.Key? key;

  final _i14.ApiFilter? filter;

  @override
  String toString() {
    return 'CharactersRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i3.ComicsPage]
class ComicsRoute extends _i12.PageRouteInfo<ComicsRouteArgs> {
  ComicsRoute({
    _i13.Key? key,
    _i14.ApiFilter? filter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ComicsRoute.name,
          args: ComicsRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'ComicsRoute';

  static const _i12.PageInfo<ComicsRouteArgs> page =
      _i12.PageInfo<ComicsRouteArgs>(name);
}

class ComicsRouteArgs {
  const ComicsRouteArgs({
    this.key,
    this.filter,
  });

  final _i13.Key? key;

  final _i14.ApiFilter? filter;

  @override
  String toString() {
    return 'ComicsRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i4.SeriesPage]
class SeriesRoute extends _i12.PageRouteInfo<SeriesRouteArgs> {
  SeriesRoute({
    _i13.Key? key,
    _i14.ApiFilter? filter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SeriesRoute.name,
          args: SeriesRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'SeriesRoute';

  static const _i12.PageInfo<SeriesRouteArgs> page =
      _i12.PageInfo<SeriesRouteArgs>(name);
}

class SeriesRouteArgs {
  const SeriesRouteArgs({
    this.key,
    this.filter,
  });

  final _i13.Key? key;

  final _i14.ApiFilter? filter;

  @override
  String toString() {
    return 'SeriesRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i5.CharacterDetailsPage]
class CharacterDetailsRoute
    extends _i12.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    required _i15.Character character,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CharacterDetailsRoute.name,
          args: CharacterDetailsRouteArgs(
            character: character,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static const _i12.PageInfo<CharacterDetailsRouteArgs> page =
      _i12.PageInfo<CharacterDetailsRouteArgs>(name);
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    required this.character,
    this.key,
  });

  final _i15.Character character;

  final _i13.Key? key;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{character: $character, key: $key}';
  }
}

/// generated route for
/// [_i6.ComicDetailsPage]
class ComicDetailsRoute extends _i12.PageRouteInfo<ComicDetailsRouteArgs> {
  ComicDetailsRoute({
    required _i16.Comic comic,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ComicDetailsRoute.name,
          args: ComicDetailsRouteArgs(
            comic: comic,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ComicDetailsRoute';

  static const _i12.PageInfo<ComicDetailsRouteArgs> page =
      _i12.PageInfo<ComicDetailsRouteArgs>(name);
}

class ComicDetailsRouteArgs {
  const ComicDetailsRouteArgs({
    required this.comic,
    this.key,
  });

  final _i16.Comic comic;

  final _i13.Key? key;

  @override
  String toString() {
    return 'ComicDetailsRouteArgs{comic: $comic, key: $key}';
  }
}

/// generated route for
/// [_i7.SeriesDetailsPage]
class SeriesDetailsRoute extends _i12.PageRouteInfo<SeriesDetailsRouteArgs> {
  SeriesDetailsRoute({
    required _i17.Series series,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SeriesDetailsRoute.name,
          args: SeriesDetailsRouteArgs(
            series: series,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SeriesDetailsRoute';

  static const _i12.PageInfo<SeriesDetailsRouteArgs> page =
      _i12.PageInfo<SeriesDetailsRouteArgs>(name);
}

class SeriesDetailsRouteArgs {
  const SeriesDetailsRouteArgs({
    required this.series,
    this.key,
  });

  final _i17.Series series;

  final _i13.Key? key;

  @override
  String toString() {
    return 'SeriesDetailsRouteArgs{series: $series, key: $key}';
  }
}

/// generated route for
/// [_i8.StoryDetailsPage]
class StoryDetailsRoute extends _i12.PageRouteInfo<StoryDetailsRouteArgs> {
  StoryDetailsRoute({
    required _i18.Story story,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          StoryDetailsRoute.name,
          args: StoryDetailsRouteArgs(
            story: story,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StoryDetailsRoute';

  static const _i12.PageInfo<StoryDetailsRouteArgs> page =
      _i12.PageInfo<StoryDetailsRouteArgs>(name);
}

class StoryDetailsRouteArgs {
  const StoryDetailsRouteArgs({
    required this.story,
    this.key,
  });

  final _i18.Story story;

  final _i13.Key? key;

  @override
  String toString() {
    return 'StoryDetailsRouteArgs{story: $story, key: $key}';
  }
}

/// generated route for
/// [_i9.CreatorDetailsPage]
class CreatorDetailsRoute extends _i12.PageRouteInfo<CreatorDetailsRouteArgs> {
  CreatorDetailsRoute({
    required _i19.Creator creator,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CreatorDetailsRoute.name,
          args: CreatorDetailsRouteArgs(
            creator: creator,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreatorDetailsRoute';

  static const _i12.PageInfo<CreatorDetailsRouteArgs> page =
      _i12.PageInfo<CreatorDetailsRouteArgs>(name);
}

class CreatorDetailsRouteArgs {
  const CreatorDetailsRouteArgs({
    required this.creator,
    this.key,
  });

  final _i19.Creator creator;

  final _i13.Key? key;

  @override
  String toString() {
    return 'CreatorDetailsRouteArgs{creator: $creator, key: $key}';
  }
}

/// generated route for
/// [_i10.StoriesPage]
class StoriesRoute extends _i12.PageRouteInfo<StoriesRouteArgs> {
  StoriesRoute({
    _i13.Key? key,
    _i14.ApiFilter? filter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          StoriesRoute.name,
          args: StoriesRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'StoriesRoute';

  static const _i12.PageInfo<StoriesRouteArgs> page =
      _i12.PageInfo<StoriesRouteArgs>(name);
}

class StoriesRouteArgs {
  const StoriesRouteArgs({
    this.key,
    this.filter,
  });

  final _i13.Key? key;

  final _i14.ApiFilter? filter;

  @override
  String toString() {
    return 'StoriesRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i11.CreatorsPage]
class CreatorsRoute extends _i12.PageRouteInfo<CreatorsRouteArgs> {
  CreatorsRoute({
    _i13.Key? key,
    _i14.ApiFilter? filter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CreatorsRoute.name,
          args: CreatorsRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'CreatorsRoute';

  static const _i12.PageInfo<CreatorsRouteArgs> page =
      _i12.PageInfo<CreatorsRouteArgs>(name);
}

class CreatorsRouteArgs {
  const CreatorsRouteArgs({
    this.key,
    this.filter,
  });

  final _i13.Key? key;

  final _i14.ApiFilter? filter;

  @override
  String toString() {
    return 'CreatorsRouteArgs{key: $key, filter: $filter}';
  }
}
