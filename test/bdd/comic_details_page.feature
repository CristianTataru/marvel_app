import 'package:marvel_app/widgets/creators_carousel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

Feature: ComicDetailsPage
    Scenario: Open Comic Details Page and load data successfully
        Given ComicsPage is opened
        When I tap on {'comicEntryTapKey'} key at index {0}
        And I wait
        And I see exactly {2} {'Marvel Previews (2017)'} texts
        And I see {'Stories'} text
        And I see {'Creators'} text
        And I see {StoriesCarousel} widget
        And I see {CreatorsCarousel} widget
