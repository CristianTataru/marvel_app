import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: CharactersPage
    Scenario: Open CharactersPage and load paginated data successfully
        Given HomePage is opened
        When I tap on {UserPick} widget at index {0}
        And I wait
        And I scroll to bottom of page {'charactersPageScrollKey'}
        And I wait 
        And I scroll to bottom of page {'charactersPageScrollKey'}
        And I see text {'Albert Cleary'}

