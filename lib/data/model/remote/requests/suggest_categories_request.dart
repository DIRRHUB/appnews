import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

/// The model class for the suggest categories request
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
