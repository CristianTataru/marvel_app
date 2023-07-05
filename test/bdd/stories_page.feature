import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: StoriesPage
    Scenario: Open StoriesPage and load paginated data successfully
        Given HomePage is opened
        When I tap on {'See all'} text at index {0}
        And I wait
        And I scroll to bottom of page {'storiesPageScrollKey'}
        And I wait 
        And I scroll to bottom of page {'storiesPageScrollKey'}
        And I see text {'Ever-expanding their ranks, the Children of the Atom combat the evils threatening both mutants and humans Ñ like the Brotherhood'}