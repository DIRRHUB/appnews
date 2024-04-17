import 'package:appnews/core/enums/home_step_enum.dart';
import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/page/articles_page.dart';
import 'package:appnews/presentation/articles/page/components/select_article_card.dart';
import 'package:appnews/presentation/home/bloc/home_cubit.dart';
import 'package:appnews/presentation/home/bloc/home_state.dart';
import 'package:appnews/presentation/one_article/one_article_page.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/page/components/search_header.dart';
import 'package:appnews/presentation/search/page/search_page.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/adaptive_splitted_view.dart';
import 'package:appnews/start/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// HomePage is a widget which control the state of the home page
/// It will display the search page or the initial articles page based on the state
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  final ArticlesCubit articlesBloc = serviceLocator<ArticlesCubit>()..getMoreRecentArticles();
  final HomeCubit homeBloc = serviceLocator<HomeCubit>();
  final SearchCubit searchBloc = serviceLocator<SearchCubit>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticlesCubit>(create: (_) => articlesBloc),
        BlocProvider<HomeCubit>(create: (_) => homeBloc),
        BlocProvider<SearchCubit>(create: (_) => searchBloc),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: PaddingConstants.medium),
            child: Text(context.loc.topAppNews, style: theme.textTheme.titleMedium),
          ),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return AdaptiveSplittedView(
              childMedium: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConstants.smallPageBreakpoint,
                    child: Column(
                      children: [
                        SearchHeader(controller: searchController),
                        Expanded(child: _buildHomeStep(state.step)),
                      ],
                    ),
                  ),
                  if (state.article.isEmpty)
                    const Expanded(child: SelectArticleCard())
                  else
                    Expanded(
                      child: SingleChildScrollView(
                        child: OneArticlePage(
                          article: state.article,
                          articleTitle: Text(
                            state.article.title,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              childSmall: Column(
                children: [
                  SearchHeader(controller: searchController),
                  Expanded(child: _buildHomeStep(state.step)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHomeStep(HomeStep step) {
    switch (step) {
      case HomeStep.search:
        return SearchPage(searchController: searchController);
      case HomeStep.initial:
        return const ArticlesPage();
    }
  }
}
