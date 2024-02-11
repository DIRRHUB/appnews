import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class OneShimmer extends StatelessWidget {
  const OneShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: PaddingConstants.extraImmense,
      width: PaddingConstants.extraImmense,
      child: Shimmer.fromColors(
        baseColor: theme.colorScheme.primary,
        highlightColor: theme.colorScheme.primary.withOpacity(0.7),
        child: Container(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
