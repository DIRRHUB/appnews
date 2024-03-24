import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/shared/constants/date_constants.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OneArticlePage extends StatelessWidget {
  const OneArticlePage({super.key, required this.article, this.articleTitle});
  final ActivityArticleItem article;
  final Widget? articleTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: PaddingConstants.extraLarge,
        right: PaddingConstants.extraLarge,
        bottom: PaddingConstants.extraLarge,
        top: PaddingConstants.normal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (article.image.isNotEmpty) ...[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                border: Border.all(color: theme.colorScheme.surfaceVariant),
              ),
              width: double.infinity,
              height: PaddingConstants.extraImmense * 8,
              child: OneImage(
                radius: BorderRadiusConstants.large,
                imageLink: article.image,
                aspectRatio: 16 / 9,
              ),
            ),
            const SizedBox(height: PaddingConstants.extraLarge),
          ],
          if (articleTitle != null) ...[
            articleTitle!,
            const SizedBox(height: PaddingConstants.extraImmense),
          ],
          Text(
            article.body,
            style: theme.primaryTextTheme.bodyLarge,
          ),
          const SizedBox(height: PaddingConstants.extraImmense),
          Text(
            DateFormat(DateConstants.ddmmyyyyhhmm).format(article.dateTimePublished),
            style: theme.primaryTextTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurface),
          ),
        ],
      ),
    );
  }
}
