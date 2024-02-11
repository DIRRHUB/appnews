import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

class StreamOfArticlesRequest {
  Json body = {
    'query': {
      '\$query': {
        'lang': 'eng',
      },
    },
    'apiKey': GlobalConstants.newsApiKey,
  };
}
