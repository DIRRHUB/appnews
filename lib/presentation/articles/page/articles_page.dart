import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/presentation/articles/bloc/articles_cubit.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:appnews/presentation/articles/page/pages/initial_articles_page.dart';
import 'package:appnews/shared/widgets/one_empty_state.dart';
import 'package:appnews/shared/widgets/one_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// ArticlesPage is a widget which control the state of the articles page
/// It will display the loading, initial, or error page based on the state
class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticlesCubit, ArticlesState>(
      builder: (context, state) {
        if (state.status == OneStatus.loading) {
          return const OneLoading();
        } else if (state.status == OneStatus.initial) {
          return const InitialArticlesPage();
        } else {
          return const OneEmptyState();
        }
      },
    );
  }
}
