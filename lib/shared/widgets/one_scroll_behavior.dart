import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// OneScrollBehavior is a class for handling scroll behavior for touch only/and mouse.
class OneScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {PointerDeviceKind.touch};
}

class OneMouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
