import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/one_scroll_behavior.dart';
import 'package:appnews/start/di.dart';
import 'package:appnews/start/routing/main_router.dart';
import 'package:appnews/start/theme/gallery_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:oktoast/oktoast.dart';

/// Base class for the app
/// It will create the app with the router and the theme
///
class OneApp extends StatelessWidget {
  OneApp({super.key});
  final router = serviceLocator<MainRouter>().router;

  @override
  Widget build(BuildContext context) {
    return createApp();
  }

  Widget createApp() {
    return OKToast(
      child: MaterialApp.router(
        builder: _buildApp,
        scrollBehavior: OneScrollBehavior(),
        title: 'Top News APP',
        themeMode: ThemeMode.dark,
        theme: GalleryOptionTheme.lightThemeData,
        darkTheme: GalleryOptionTheme.darkThemeData,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }

  Widget _buildApp(BuildContext context, Widget? child) {
    final size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(size.width > SizeConstants.smallPageBreakpoint ? 1 : 0.75),
      ),
      child: child ?? const SizedBox(),
    );
  }
}
