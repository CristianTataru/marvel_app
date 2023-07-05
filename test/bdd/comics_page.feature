import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: ComicsPage
    Scenario: Open ComicsPage and load paginated data successfully
        Given HomePage is opened
        When I tap on {UserPick} widget at index {1}
        And I wait
        And I scroll to bottom of page {'comicsPageScrollKey'}
        And I wait 
        And I scroll to bottom of page {'comicsPageScrollKey'}
        And I see text {'Holiday Special'}



