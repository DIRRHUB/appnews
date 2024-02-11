import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class SelectArticleCard extends StatelessWidget {
  const SelectArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.article_rounded),
          const SizedBox(height: PaddingConstants.extraLarge),
          Text(context.loc.selectArticle, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
