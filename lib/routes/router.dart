import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: CharactersRoute.page),
        AutoRoute(page: ComicsRoute.page),
        AutoRoute(page: SeriesRoute.page),
        AutoRoute(page: CharacterDetailsRoute.page),
        AutoRoute(page: ComicDetailsRoute.page),
        AutoRoute(page: SeriesDetailsRoute.page),
        AutoRoute(page: StoryDetailsRoute.page),
        AutoRoute(page: CreatorDetailsRoute.page),
        AutoRoute(page: StoriesRoute.page),
        AutoRoute(page: CreatorsRoute.page),
      ];
}
