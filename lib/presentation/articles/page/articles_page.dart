import 'package:appnews/presentation/articles/page/components/small_article_card.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
      shrinkWrap: true,
      itemCount: 100,
      itemBuilder: (context, index) {
        return const SmallArticleCard();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: PaddingConstants.large);
      },
    );
  }
}
