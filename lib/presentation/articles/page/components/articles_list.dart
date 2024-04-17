import 'package:appnews/core/helper/layout_helper.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:appnews/presentation/articles/page/components/small_article_card.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// ArticlesList is a widget that displays a list of provided articles
class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key, required this.articles, this.pagination});
  final List<ActivityArticleItem> articles;
  final Widget? pagination;

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return const OneEmptyState();
    } else {
      return LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final isLarge = LayoutHelper.isLarge(width);
          return BlocBuilder<ArticlesCubit, ArticlesState>(
            builder: (context, state) {
              return Column(
                children: [
                  const SizedBox(height: PaddingConstants.normal),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PaddingConstants.extraLarge,
                        vertical: PaddingConstants.normal,
                      ),
                      shrinkWrap: true,
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final isLast = index == articles.length - 1;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallArticleCard(article: articles[index], isLarge: isLarge),
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
                ],
              );
            },
          );
        },
      );
    }
  }
}
