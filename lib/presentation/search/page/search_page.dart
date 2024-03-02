import 'package:appnews/presentation/search/page/components/search_filters.dart';
import 'package:appnews/presentation/search/page/components/search_selected_filters.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
      child: Column(
        children: [
          SearchSelectedFilters(),
          SearchFilters(),
        ],
      ),
    );
  }
}
