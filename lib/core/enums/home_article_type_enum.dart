import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

/// The enum is used to define the type of article in the home page
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
