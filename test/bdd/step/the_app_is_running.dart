import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/main.dart';

import '../../helpers/mock_http_overrides.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  HttpOverrides.global = MockHttpOverrides();
  await tester.pumpWidget(const MainApp());
}
