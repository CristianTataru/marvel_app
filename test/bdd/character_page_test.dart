// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/feature/home/presentation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/homepage_is_opened.dart';
import './step/i_tap_on_widget_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_scroll_to_bottom_of_page.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';

void main() {
  group('''CharactersPage''', () {
    testWidgets('''Open CharactersPage and load paginated data successfully''', (tester) async {
      await homepageIsOpened(tester);
      await iTapOnWidgetAtIndex(tester, UserPick, 0);
      await iWait(tester);
      await iScrollToBottomOfPage(tester, 'charactersPageScrollKey');
      await iWait(tester);
      await iScrollToBottomOfPage(tester, 'charactersPageScrollKey');
      await iSeeText(tester, 'Albert Cleary');
    });
  });
}
