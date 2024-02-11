import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';

class GetArticlesRequest {
  final int page;
  GetArticlesRequest({required this.page});

  late Json body = {
    'query': {
      '\$query': {
        'lang': 'eng',
      },
      '\$filter': {
        'forceMaxDataTimeWindow': '31',
        'isDuplicate': 'skipDuplicates',
      },
    },
    'resultType': 'articles',
    'articlesSortBy': 'date',
    'articlesPage': page,
    'apiKey': GlobalConstants.newsApiKey,
  };
}
