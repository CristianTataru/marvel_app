import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(const MainApp());
}
