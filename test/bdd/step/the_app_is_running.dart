import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/main.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await mockNetworkImages(() async {
    await tester.pumpWidget(const MainApp());
  });
}
