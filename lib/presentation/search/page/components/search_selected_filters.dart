import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/multi_chips.dart';
import 'package:flutter/material.dart';

class SearchSelectedFilters extends StatelessWidget {
  const SearchSelectedFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MultiChips(options: []),
        if ([].isNotEmpty) const SizedBox(height: PaddingConstants.large),
      ],
    );
  }
}
