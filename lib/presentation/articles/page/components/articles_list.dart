import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:appnews/presentation/articles/page/components/small_article_card.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key, required this.articles, this.pagination});
  final List<ActivityArticleItem> articles;
  final Widget? pagination;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticlesCubit, ArticlesState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
                shrinkWrap: true,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final isLast = index == articles.length - 1;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallArticleCard(article: articles[index]),
                      if (isLast && pagination != null) ...[
                        const SizedBox(height: PaddingConstants.large),
                        pagination!,
                      ],
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: PaddingConstants.large);
                },
              ),
            ),
            const SizedBox(height: PaddingConstants.large),
          ],
        );
      },
    );
  }
}
