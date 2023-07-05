import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:flutter_test/flutter_test.dart';

import 'homepage_is_opened.dart';
import 'i_tap_on_text_at_index.dart';

Future<void> storiespageIsOpened(WidgetTester tester) async {
  await homepageIsOpened(tester);
  await iTapOnTextAtIndex(tester, 'See all', 0);
  await iWait(tester);
}
