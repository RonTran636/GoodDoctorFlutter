import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'generated/app_router.dart';

final getIt = GetIt.asNewInstance();

void initializeDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<Dio>(Dio());

  // //Init Hive
  // var directory = await getTemporaryDirectory();
  // Hive
  //   ..init(directory.path)
  //   ..registerAdapter(UserDpoAdapter())
  //   ..registerAdapter(TeamDpoAdapter());
  // final box = await Hive.openBox('defaultBox');
  //
  // getIt.registerSingleton<Box>(box);
}
