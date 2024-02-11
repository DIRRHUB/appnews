import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

class StreamOfArticlesRequest {
  Json body = {
    'articleBodyLen': -1,
    'recentActivityArticlesMaxArticleCount': 200,
    'lang': 'eng',
    'apiKey': GlobalConstants.newsApiKey,
  };
}
