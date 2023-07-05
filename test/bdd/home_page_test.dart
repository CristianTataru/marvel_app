// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/feature/home/presentation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_exactly_widgets.dart';

void main() {
  group('''HomePage''', () {
    testWidgets('''Load HomePage data successfully''', (tester) async {
      await theAppIsRunning(tester);
      await iWait(tester);
      await iSeeText(tester, 'Recommendations');
      await iSeeText(tester, 'Characters');
      await iSeeText(tester, 'Comics');
      await iSeeText(tester, 'Series');
      await iSeeText(tester, 'Stories');
      await iSeeText(tester, 'Creators');
      await iSeeExactlyTexts(tester, 2, 'See all');
      await iSeeExactlyWidgets(tester, 3, UserPick);
      await iSeeExactlyWidgets(tester, 10, StoryEntry);
      await iSeeExactlyWidgets(tester, 1, CreatorsCarousel);
    });
  });
}
