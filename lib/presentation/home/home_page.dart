import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/page/articles_page.dart';
import 'package:appnews/presentation/articles/page/components/select_article_card.dart';
import 'package:appnews/presentation/home/bloc/home_cubit.dart';
import 'package:appnews/presentation/home/bloc/home_state.dart';
import 'package:appnews/presentation/one_article/one_article_page.dart';
import 'package:appnews/presentation/search/page/components/search_header.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/adaptive_splitted_view.dart';
import 'package:appnews/start/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ArticlesCubit articlesBloc = serviceLocator<ArticlesCubit>()..init();
  final HomeCubit homeBloc = serviceLocator<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticlesCubit>(create: (_) => articlesBloc),
        BlocProvider<HomeCubit>(create: (_) => homeBloc),
      ],
      child: Scaffold(
        body: AdaptiveSplittedView(
          childMedium: Row(
            children: [
              const SizedBox(
                width: SizeConstants.smallPageBreakpoint,
                child: Column(
                  children: [
                    SearchHeader(),
                    Expanded(child: ArticlesPage()),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state.article.isEmpty) {
                      return const SelectArticleCard();
                    } else {
                      return OneArticlePage(article: state.article);
                    }
                  },
                ),
              ),
            ],
          ),
          childSmall: const Column(
            children: [
              SearchHeader(),
              Expanded(child: ArticlesPage()),
            ],
          ),
        ),
      ),
    );
  }
}
