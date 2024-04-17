import 'package:appnews/presentation/home/home_page.dart';
import 'package:appnews/start/routing/helpers/multiplatform_page.dart';
import 'package:appnews/start/routing/main_route_names.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The main router for the app
/// It will handle all the routing in the app
class MainRouter {
  late GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: MainRoutePath.home,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: MainRoutePath.home,
        name: MainRouteName.home,
        pageBuilder: (context, state) {
          return MultiplatformPage.create(
            key: ValueKey(state.pageKey),
            name: state.uri.toString(),
            child: const HomePage(),
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MultiplatformPage.create(
        key: state.pageKey,
        child: Container(color: Colors.red),
      );
    },
    redirect: (BuildContext context, GoRouterState state) async {
      return null;
    },
  );
}
