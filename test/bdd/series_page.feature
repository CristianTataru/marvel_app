import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: SeriesPage
    Scenario: Open SeriesPage and load paginated data successfully
        Given HomePage is opened
        When I tap on {UserPick} widget at index {2}
        And I wait
        And I scroll to bottom of page {'seriesPageScrollKey'}
        And I wait 
        And I scroll to bottom of page {'seriesPageScrollKey'}
        And I see text {'15-Love'}