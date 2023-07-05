import 'package:marvel_app/feature/home/presentation/home_page.dart';

Feature: HomePage
    Scenario: Load HomePage data successfully
        Given the app is running
        And I wait
        Then I see text {'Recommendations'}
        And I see text {'Characters'}
        And I see text {'Comics'}
        And I see text {'Series'}
        And I see text {'Stories'}
        And I see text {'Creators'}
        And I see exactly {2} {'See all'} texts
        And I see exactly {3} {UserPick} widgets
        And I see exactly {10} {StoryEntry} widgets
        And I see exactly {1} {CreatorsCarousel} widgets