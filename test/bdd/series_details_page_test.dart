// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/widgets/creators_caroulsel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/characters_caroulsel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/seriespage_is_opened.dart';
import './step/i_tap_on_key_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';
import 'package:bdd_widget_test/step/i_dont_see_widget.dart';

void main() {
  group('''SeriesDetailsPage''', () {
    testWidgets('''Open Series Details Page and load data successfully''', (tester) async {
      await seriespageIsOpened(tester);
      await iTapOnKeyAtIndex(tester, 'seriesEntryTapKey', 0);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, '2099 Omega (2019)');
      await iSeeText(tester, 'Comics');
      await iSeeText(tester, 'Stories');
      await iSeeText(tester, 'Creators');
      await iSeeWidget(tester, ComicsCarousel);
      await iSeeWidget(tester, StoriesCarousel);
      await iSeeWidget(tester, CreatorsCarousel);
      await iDontSeeWidget(tester, CharactersCarousel);
    });
  });
}
