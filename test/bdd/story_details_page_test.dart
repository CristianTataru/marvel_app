// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/creators_carousel.dart';
import 'package:marvel_app/widgets/characters_carousel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/storiespage_is_opened.dart';
import './step/i_tap_on_key_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';
import 'package:bdd_widget_test/step/i_dont_see_widget.dart';

void main() {
  group('''StoryDetailsPage''', () {
    testWidgets('''Open Story Details Page and load data successfully''', (tester) async {
      await storiespageIsOpened(tester);
      await iTapOnKeyAtIndex(tester, 'storyEntryTapKey', 0);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, 'Investigating the murder of a teenage girl, Cage suddenly learns that a three-way gang war is under way for control of the turf');
      await iSeeText(tester, 'Comics');
      await iSeeText(tester, 'Series');
      await iSeeWidget(tester, ComicsCarousel);
      await iSeeWidget(tester, SeriesCarousel);
      await iDontSeeWidget(tester, CharactersCarousel);
      await iDontSeeWidget(tester, CreatorsCarousel);
    });
  });
}
