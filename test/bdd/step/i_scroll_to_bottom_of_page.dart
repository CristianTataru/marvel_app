import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iScrollToBottomOfPage(WidgetTester tester, String key) async {
  await tester.drag(find.byKey(Key(key)), const Offset(0, -3000));
}
