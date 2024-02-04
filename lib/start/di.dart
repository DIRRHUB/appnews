import 'dart:async';

import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/start/routing/main_router.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<MainRouter>(
    MainRouter.new,
  );

  serviceLocator.registerFactory<Dio>(
    () => Dio()
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
        ),
      ),
  );

  //datasources

  //repository

  //usecase
}

Future<void> reinitApi() async {
  await serviceLocator.reset();
  await init();
  GlobalConstants.navState = serviceLocator<MainRouter>().router.routerDelegate.navigatorKey;
}

void unregisterSingletonByObject<T extends Object>(T instance) {
  if (serviceLocator.isRegistered<T>()) {
    serviceLocator.unregister<T>();
    serviceLocator.registerSingleton<T>(instance);
  } else {
    serviceLocator.registerSingleton<T>(instance);
  }
}
