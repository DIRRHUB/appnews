import 'package:appnews/core/enums/home_article_type_enum.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:appnews/presentation/articles/page/components/articles_list.dart';
import 'package:appnews/presentation/articles/page/components/pagination_list.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/multi_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// InitialArticlesPage is a widget that displays the initial articles page state
class InitialArticlesPage extends StatelessWidget {
  const InitialArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ArticlesCubit bloc = BlocProvider.of<ArticlesCubit>(context);
    final theme = Theme.of(context);
    return BlocBuilder<ArticlesCubit, ArticlesState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
              child: MultiChips<HomeArticleType>(
                options: HomeArticleType.values.map((type) {
                  final bool isSelected = state.type == type;
                  return ChipItem(
                    item: type,
                    label: type.getTitle(context),
                    isSelected: isSelected,
                    borderColor: isSelected ? theme.colorScheme.primary : theme.colorScheme.surfaceVariant,
                    isContentCenter: true,
                  );
                }).toList(),
                radius: BorderRadius.circular(BorderRadiusConstants.large),
                spacing: PaddingConstants.medium,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    bloc.selectType(value.first);
                  }
                },
                padding: const EdgeInsets.all(PaddingConstants.medium),
                isRequired: true,
                isFlexible: true,
                isMultipleChoice: false,
              ),
            ),
            Expanded(child: _buildActivitiesByType(context, state)),
          ],
        );
      },
    );
  }

  Widget _buildActivitiesByType(BuildContext context, ArticlesState state) {
    final ArticlesCubit bloc = BlocProvider.of<ArticlesCubit>(context);
    switch (state.type) {
      case HomeArticleType.recent:
        return ArticlesList(articles: state.recentActivityActicles.recentActivityActiclesBody.activities);
      case HomeArticleType.popular:
        return ArticlesList(
          articles: state.getArticles.getArticlesBody.results,
          pagination: PaginationList(
            pages: state.getArticles.getArticlesBody.pages,
            selectedPage: state.getArticles.getArticlesBody.page,
            onTap: bloc.getMorePopularArticles,
          ),
        );
      default:
        return const Placeholder();
    }
  }
}
