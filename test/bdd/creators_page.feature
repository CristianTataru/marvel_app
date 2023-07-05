import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: CreatorsPage
    Scenario: Open CreatorsPage and load paginated data successfully
        Given HomePage is opened
        Then I scroll to text {'Creators'} {'homePageScrollKey'}
        When I tap on {'See all'} text at index {1}
        And I wait
        And I scroll to bottom of page {'creatorsPageScrollKey'}
        And I wait 
        And I scroll to bottom of page {'creatorsPageScrollKey'}
        And I see text {'Balcells'}