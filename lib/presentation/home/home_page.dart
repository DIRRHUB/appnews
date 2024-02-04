import 'package:appnews/presentation/articles/page/articles_page.dart';
import 'package:appnews/presentation/one_article/one_article_page.dart';
import 'package:appnews/presentation/search/page/components/search_header.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/adaptive_splitted_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Expanded(child: Container(color: Colors.redAccent, child: const OneArticlePage())),
          ],
        ),
        childSmall: const Column(
          children: [
            SearchHeader(),
            Expanded(child: ArticlesPage()),
          ],
        ),
      ),
    );
  }
}
