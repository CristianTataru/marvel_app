import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:flutter_test/flutter_test.dart';

import 'homepage_is_opened.dart';
import 'i_scroll_to_text.dart';
import 'i_tap_on_text_at_index.dart';

Future<void> creatorspageIsOpened(WidgetTester tester) async {
  await homepageIsOpened(tester);
  await iScrollToText(tester, 'Creators', 'homePageScrollKey');
  await iTapOnTextAtIndex(tester, 'See all', 1);
  await iWait(tester);
}
