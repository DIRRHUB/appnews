import 'dart:developer';

import 'package:appnews/start/di.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:loggy/loggy.dart';
import 'package:url_strategy/url_strategy.dart';

class InitialSetup {
  InitialSetup._privateConstructor();

  static final InitialSetup instance = InitialSetup._privateConstructor();

  Future<void> init() async {
    await _setupOtherStart(); // MyHttpOverrides, deviceId
    log('setupOtherStart: done');
    await _setupLoggers(); // Segment, Datadog, Loggy
    log('setupLoggers: done');
    await _setupStorages(); // Hive, GetIt, LocalStorage
    log('setupStorages: done');
  }

  Future<void> _setupLoggers() async {
    if (!kIsWeb) {
      Loggy.initLoggy();
    } else {
      ///WEB part of datadog still in beta so for now using default printer without it
      Loggy.initLoggy(logPrinter: const PrettyPrinter());
    }
  }

  Future<void> _setupStorages() async {
    await reinitApi();
  }

  ///Used for setup need objects which have no specific initialization required place.
  Future<void> _setupOtherStart() async {
    ///user as experimental feature to reduce cache size
    if (kIsWeb) SystemChannels.skia.invokeMethod('Skia.setResourceCacheMaxBytes', 1000000000);
    GoRouter.optionURLReflectsImperativeAPIs = true;
    if (kIsWeb) setPathUrlStrategy();
  }
}
