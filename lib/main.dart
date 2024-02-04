import 'dart:async';

import 'package:appnews/start/initial_setup.dart';
import 'package:appnews/start/one_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  await runZoned(() async {
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
    WidgetsFlutterBinding.ensureInitialized();
    await InitialSetup.instance.init();
    runApp(OneApp());
  });
}
