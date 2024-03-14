import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneIconButton extends StatelessWidget {
  const OneIconButton({
    super.key,
    this.onTap,
    required this.icon,
    this.isEnabled = true,
    this.backgroundColor,
    this.borderRadius,
    this.isOutlined = false,
    this.isCircular = true,
    this.height,
    this.width,
    this.padding,
    this.iconSize,
    this.iconColor,
    this.borderSide,
  });
  final Function()? onTap;
  final EdgeInsets? padding;
  final bool isEnabled;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final bool isOutlined;
  final double? height;
  final double? width;
  final double? iconSize;
  final bool isCircular;
  final IconData icon;
  final Color? iconColor;
  final BorderSide? borderSide;

  Color _getColor(BuildContext context) {
    final theme = Theme.of(context);
    if (isEnabled) {
      return isOutlined ? Colors.transparent : backgroundColor ?? theme.colorScheme.primary;
    } else {
      return isOutlined ? Colors.transparent : backgroundColor ?? theme.colorScheme.primary.withOpacity(0.75);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: IconButton(
        onPressed: isEnabled ? onTap : null,
        padding: padding,
        mouseCursor: SystemMouseCursors.click,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(_getColor(context)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
              side: borderSide == null
                  ? isOutlined
                      ? BorderSide(color: theme.colorScheme.onPrimary)
                      : BorderSide.none
                  : borderSide!,
            ),
          ),
        ),
        icon: GestureDetector(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
