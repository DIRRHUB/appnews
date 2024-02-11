import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_image.dart';
import 'package:flutter/material.dart';

class OneArticlePage extends StatelessWidget {
  const OneArticlePage({super.key, required this.article});
  final ActivityArticleItem article;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(PaddingConstants.extraLarge),
      children: [
        if (article.image.isNotEmpty) ...[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
              border: Border.all(color: theme.colorScheme.surfaceVariant),
            ),
            height: PaddingConstants.extraImmense * 8,
            margin: const EdgeInsets.all(2),
            child: OneImage(
              radius: BorderRadiusConstants.normal,
              imageLink: article.image,
              aspectRatio: 16 / 9,
            ),
          ),
          const SizedBox(height: PaddingConstants.extraLarge),
        ],
        Text(
          article.title,
          style: theme.textTheme.headlineMedium,
        ),
        const SizedBox(height: PaddingConstants.extraImmense),
        Text(
          article.body,
          style: theme.textTheme.labelMedium,
        ),
      ],
    );
  }
}
