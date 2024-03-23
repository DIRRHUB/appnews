import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/home/bloc/home_cubit.dart';
import 'package:appnews/shared/constants/date_constants.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_card.dart';
import 'package:appnews/shared/widgets/one_dialog.dart';
import 'package:appnews/shared/widgets/one_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SmallArticleCard extends StatelessWidget {
  const SmallArticleCard({super.key, required this.article, required this.isLarge});
  final ActivityArticleItem article;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OneCard(
      onTap: () {
        BlocProvider.of<HomeCubit>(context).selectArticle(article);
        if (isLarge) {
          OneDialog.showArticlePage(context, article);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(PaddingConstants.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: PaddingConstants.extraImmensePlus,
                  width: PaddingConstants.extraImmensePlus,
                  child: OneImage(radius: BorderRadiusConstants.normal, imageLink: article.image),
                ),
                const SizedBox(width: PaddingConstants.medium),
                Expanded(
                  child: Text(
                    article.title,
                    style: theme.textTheme.labelLarge,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: PaddingConstants.medium),
            Text(
              article.body,
              style: theme.primaryTextTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: PaddingConstants.medium),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                DateFormat(DateConstants.hhmmdmmmy).format(article.dateTimePublished),
                style: theme.primaryTextTheme.labelLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
