import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// User authentication protection moved to [MainRouterInformationParser] as required by Navigation_2.0
class MultiplatformPage {
  static Page create({
    required Widget child,
    bool maintainState = true,
    bool fullscreenDialog = false,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) {
    if (kIsWeb) {
      return NoAnimationPage(
        child: child,
        key: key,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        name: name,
        arguments: arguments,
        restorationId: restorationId,
      );
    } else {
      return MaterialPage(
        child: child,
        key: key,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
        name: name,
        arguments: arguments,
        restorationId: restorationId,
      );
    }
  }

  static CustomTransitionPage createPageWithSlideAnimation({
    required Widget child,
    Offset begin = const Offset(1, 0),
    LocalKey? key,
    String? name,
  }) {
    return CustomTransitionPage<void>(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => kIsWeb
          ? child
          : SlideTransition(
              position: Tween<Offset>(
                begin: begin,
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
    );
  }
}

class NoAnimationPage<T> extends Page<T> {
  /// Creates a material page.
  const NoAnimationPage({
    required this.child,
    this.maintainState = true,
    this.fullscreenDialog = false,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(key: key, name: name, arguments: arguments, restorationId: restorationId);

  /// The content to be shown in the [Route] created by this page.
  final Widget child;

  /// {@macro flutter.widgets.ModalRoute.maintainState}
  final bool maintainState;

  /// {@macro flutter.widgets.PageRoute.fullscreenDialog}
  final bool fullscreenDialog;

  @override
  Route<T> createRoute(BuildContext context) {
    return _NoAnimationRouteBuilder<T>(
      widget: child,
      settings: this,
    );
  }
}

class _NoAnimationRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget widget;

  _NoAnimationRouteBuilder({
    required this.widget,
    RouteSettings? settings,
  }) : super(
          settings: settings,
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder:
              (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return child;
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
}
