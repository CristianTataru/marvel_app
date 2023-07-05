import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapOnKeyAtIndex(WidgetTester tester, String key, int index) async {
  await tester.tap(find.byKey(Key(key)).at(index));
}
