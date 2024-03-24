import 'dart:async';

import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/data/datasources/remote/news_remote_datasource.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/home/bloc/home_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/start/routing/main_router.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<MainRouter>(
    MainRouter.new,
  );

  serviceLocator.registerLazySingleton<NewsRemoteDatasource>(
    () => NewsRemoteDatasource(
      serviceLocator<Dio>(),
    ),
  );

  serviceLocator.registerLazySingleton<NewsRemoteRepository>(
    () => NewsRemoteRepository(serviceLocator<NewsRemoteDatasource>()),
  );

  serviceLocator.registerLazySingleton<Dio>(
    () => Dio()
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
        ),
      ),
  );

  serviceLocator.registerLazySingleton<ArticlesCubit>(
    () => ArticlesCubit(
      serviceLocator<NewsRemoteRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<HomeCubit>(
    HomeCubit.new,
  );

  serviceLocator.registerLazySingleton<SearchCubit>(
    () => SearchCubit(
      serviceLocator<NewsRemoteRepository>(),
    ),
  );
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
