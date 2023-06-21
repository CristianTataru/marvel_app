import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/domain/marvel_api.dart';
import 'package:marvel_app/feature/home/presentation/home_page.dart';

final dio = Dio();
final marvelApi = MarvelApi(dio);
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
