import 'package:marvel_app/widgets/creators_caroulsel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';
import 'package:marvel_app/widgets/creators_carousel.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/characters_carousel.dart';
import 'package:marvel_app/widgets/characters_caroulsel.dart';

Feature: SeriesDetailsPage
    Scenario: Open Series Details Page and load data successfully
        Given SeriesPage is opened
        When I tap on {'seriesEntryTapKey'} key at index {0}
        And I wait
        And I see exactly {2} {'2099 Omega (2019)'} texts
        And I see {'Comics'} text
        And I see {'Stories'} text
        And I see {'Creators'} text
        And I see {ComicsCarousel} widget
        And I see {StoriesCarousel} widget
        And I see {CreatorsCarousel} widget
        And I don't see {CharactersCarousel} widget