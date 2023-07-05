// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/characterspage_is_opened.dart';
import './step/i_tap_on_key_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';

void main() {
  group('''CharacterDetailsPage''', () {
    testWidgets('''Open Character Details Page and load data successfully''', (tester) async {
      await characterspageIsOpened(tester);
      await iTapOnKeyAtIndex(tester, 'characterEntryTapKey', 0);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, '3-D Man');
      await iSeeText(tester, 'Comics');
      await iSeeText(tester, 'Series');
      await iSeeText(tester, 'Stories');
      await iSeeWidget(tester, ComicsCarousel);
      await iSeeWidget(tester, SeriesCarousel);
      await iSeeWidget(tester, StoriesCarousel);
    });
  });
}
