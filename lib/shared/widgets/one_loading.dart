import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneLoading extends StatelessWidget {
  const OneLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SizedBox(
        height: PaddingConstants.immense,
        width: PaddingConstants.immense,
        child: CircularProgressIndicator(color: theme.colorScheme.primary),
      ),
    );
  }
}
