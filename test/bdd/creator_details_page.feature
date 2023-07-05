import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

Feature: CreatorDetailsPage
    Scenario: Open Creator Details Page and load data successfully
        Given CreatorsPage is opened
        When I tap on {'creatorEntryTapKey'} key at index {0}
        And I wait
        And I see exactly {2} {'Buzz'} texts
        And I see {'Comics'} text
        And I see {'Series'} text
        And I see {'Stories'} text
        And I see {ComicsCarousel} widget
        And I see {SeriesCarousel} widget
        And I see {StoriesCarousel} widget
