import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneCard extends StatelessWidget {
  const OneCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
        border: Border.all(color: theme.colorScheme.surfaceVariant),
      ),
      child: child,
    );
  }
}
