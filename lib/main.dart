import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/domain/marvel_api.dart';
import 'package:marvel_app/routes/router.dart';

final router = AppRouter();
final dio = Dio();
final marvelApi = MarvelApi(dio);
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
