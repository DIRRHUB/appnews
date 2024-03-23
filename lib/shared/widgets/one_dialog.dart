import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/one_article/one_article_page.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/adaptive_full_page_view.dart';
import 'package:flutter/material.dart';

class OneDialog {
  static void showArticlePage(BuildContext context, ActivityArticleItem article) async {
    final theme = Theme.of(context);
    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AdaptiveFullPageDialogContainer(
          title: Text(
            article.title,
            style: theme.textTheme.bodyLarge,
          ),
          webWidth: SizeConstants.defaultWebContainerWidth,
          dialogContext: dialogContext,
          child: OneArticlePage(article: article),
        );
      },
    );
  }
}
