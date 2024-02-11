import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

enum HomeArticleType { recent, popular }

extension HomeArticleTypeExtension on HomeArticleType {
  String getTitle(BuildContext context) {
    switch (this) {
      case HomeArticleType.recent:
        return context.loc.recent;
      case HomeArticleType.popular:
        return context.loc.popular;
    }
  }
}
