import 'package:flutter/material.dart';

class GlobalConstants {
  /// Now we initialize this variable from GoRouter plugin during init function
  static late GlobalKey<NavigatorState> navState;

  static const String baseUrl = 'https://newsapi.ai/api/v1/';
  static const String newsApiKey = '0857af98-7a02-4050-adcf-cd058738097c';
}
