import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

class SuggestLocationsRequest {
  final String text;
  SuggestLocationsRequest({required this.text});

  late Json body = {
    'prefix': text,
    'count': 20,
    'lang': 'eng',
    'apiKey': GlobalConstants.newsApiKey,
  };
}
