// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:marvel_app/widgets/creators_caroulsel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/comicspage_is_opened.dart';
import './step/i_tap_on_key_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';

void main() {
  group('''ComicDetailsPage''', () {
    testWidgets('''Open Comic Details Page and load data successfully''', (tester) async {
      await comicspageIsOpened(tester);
      await iTapOnKeyAtIndex(tester, 'comicEntryTapKey', 0);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, 'Marvel Previews (2017)');
      await iSeeText(tester, 'Stories');
      await iSeeText(tester, 'Creators');
      await iSeeWidget(tester, StoriesCarousel);
      await iSeeWidget(tester, CreatorsCarousel);
    });
  });
}
