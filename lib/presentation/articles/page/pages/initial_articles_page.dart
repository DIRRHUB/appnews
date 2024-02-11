import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/articles/page/components/small_article_card.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class InitialArticlesPage extends StatelessWidget {
  const InitialArticlesPage({super.key, required this.articles});
  final List<ActivityArticleItem> articles;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
          child: Text(context.loc.recentNews, style: theme.textTheme.bodySmall),
        ),
        const SizedBox(height: PaddingConstants.large),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
            shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return SmallArticleCard(article: articles[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: PaddingConstants.large);
            },
          ),
        ),
      ],
    );
  }
}
