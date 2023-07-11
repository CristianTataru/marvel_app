import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/creators_carousel.dart';
import 'package:marvel_app/widgets/characters_carousel.dart';

Feature: StoryDetailsPage
    Scenario: Open Story Details Page and load data successfully
        Given StoriesPage is opened
        When I tap on {'storyEntryTapKey'} key at index {0}
        And I wait
        And I see exactly {2} {'Investigating the murder of a teenage girl, Cage suddenly learns that a three-way gang war is under way for control of the turf'} texts
        And I see {'Comics'} text
        And I see {'Series'} text
        And I see {ComicsCarousel} widget
        And I see {SeriesCarousel} widget
        And I don't see {CharactersCarousel} widget
        And I don't see {CreatorsCarousel} widget


       