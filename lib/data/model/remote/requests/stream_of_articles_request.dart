import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

/// The model class for the stream of articles request
class StreamOfArticlesRequest {
  Json body = {
    'articleBodyLen': -1,
    'recentActivityArticlesMaxArticleCount': 100,
    'query': {
      '\$query': {
        'lang': 'eng',
      },
      '\$filter': {
        'isDuplicate': 'skipDuplicates',
      },
    },
    'apiKey': GlobalConstants.newsApiKey,
  };
}
