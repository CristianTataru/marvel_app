import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/api/interceptors/mock_backend_interceptor.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio dio() => Dio()
    ..interceptors.addAll(
      [
        if (Platform.environment.containsKey('FLUTTER_TEST')) MockBackendInterceptor(),
      ],
    );
}
