import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:appnews/presentation/articles/page/pages/initial_articles_page.dart';
import 'package:appnews/shared/widgets/one_error_page.dart';
import 'package:appnews/shared/widgets/one_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticlesCubit, ArticlesState>(
      builder: (context, state) {
        if (state.status == OneStatus.loading) {
          return const OneLoading();
        } else if (state.status == OneStatus.initial) {
          return InitialArticlesPage(articles: state.articles);
        } else {
          return const OneErrorPage();
        }
      },
    );
  }
}
