import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/shared/widgets/one_empty_state.dart';
import 'package:flutter/material.dart';

/// SelectArticleCard is a widget that displays a card to select an article
class SelectArticleCard extends StatelessWidget {
  const SelectArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const OneEmptyState(),
          Text(context.loc.selectArticle, style: theme.textTheme.labelLarge),
        ],
      ),
    );
  }
}
