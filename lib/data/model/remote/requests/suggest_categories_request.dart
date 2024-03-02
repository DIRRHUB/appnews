import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

class SuggestCategoriesRequest {
  final String text;
  SuggestCategoriesRequest({required this.text});

  late Json body = {
    'prefix': text,
    'count': 20,
    'lang': 'eng',
    'apiKey': GlobalConstants.newsApiKey,
  };
}
