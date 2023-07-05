import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/feature/home/presentation/home_page.dart';

import 'homepage_is_opened.dart';
import 'i_tap_on_widget_at_index.dart';

Future<void> seriespageIsOpened(WidgetTester tester) async {
  await homepageIsOpened(tester);
  await iTapOnWidgetAtIndex(tester, UserPick, 2);
  await iWait(tester);
}
