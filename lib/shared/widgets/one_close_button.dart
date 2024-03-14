import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_icon_button.dart';
import 'package:flutter/material.dart';

class OneCloseButton extends StatelessWidget {
  const OneCloseButton({super.key, required this.onTap, this.backgroundColor, this.isCircle = true});
  final Function() onTap;
  final Color? backgroundColor;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OneIconButton(
      onTap: onTap,
      icon: Icons.close,
      height: isCircle ? PaddingConstants.extraLarge : PaddingConstants.medium,
      width: isCircle ? PaddingConstants.extraLarge : PaddingConstants.medium,
      backgroundColor: backgroundColor ?? theme.colorScheme.surface,
      iconColor: theme.colorScheme.onPrimary,
      padding: EdgeInsets.zero,
    );
  }
}
