import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iScrollToText(WidgetTester tester, String text, String key) async {
  tester.dragUntilVisible(find.text(text), find.byKey(Key(key)), const Offset(0, 50));
}
