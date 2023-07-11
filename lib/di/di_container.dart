import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/di/di_container.config.dart';

final diContainer = GetIt.instance;

@InjectableInit()
void configureDependencies() => diContainer.init();
