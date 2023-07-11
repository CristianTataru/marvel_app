import 'package:flutter/material.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/routes/router.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: diContainer.get<AppRouter>().config(),
    );
  }
}
