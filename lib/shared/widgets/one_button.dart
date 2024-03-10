import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:flutter/material.dart';

class OneButton extends StatelessWidget {
  const OneButton({
    super.key,
    required this.text,
    this.onTap,
    this.isEnabled = true,
    this.backgroundColor,
    this.textStyle,
    this.border = BorderSide.none,
    this.height,
    this.borderRadius,
    this.width,
    this.padding,
    this.iconColor,
    this.iconPath,
    this.secondaryIconPath,
    this.iconSize,
    this.disabledColor,
    this.disabledIconColor,
  });
  final Function()? onTap;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool isEnabled;
  final Color? backgroundColor;
  final BorderSide border;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Color? iconColor;
  final String? iconPath;
  final String? secondaryIconPath;
  final double? iconSize;
  final Color? disabledColor;
  final Color? disabledIconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? SizeConstants.defaultButtonHeight,
      child: TextButton(
        onPressed: isEnabled ? onTap : null,
        style: ButtonStyle(
          mouseCursor: MaterialStateProperty.all(isEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic),
          padding: MaterialStateProperty.all(
            padding ?? const EdgeInsets.symmetric(horizontal: PaddingConstants.large, vertical: 0),
          ),
          backgroundColor: MaterialStateProperty.all(_getColor(context)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
              side: border,
            ),
          ),
        ),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (text.isNotEmpty)
          Flexible(
            child: Text(
              text,
              style: textStyle ??
                  theme.textTheme.bodySmall?.copyWith(
                    color: isEnabled ? theme.colorScheme.onPrimary : theme.colorScheme.onPrimary.withOpacity(0.75),
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    );
  }

  Color? _getColor(BuildContext context) {
    final theme = Theme.of(context);
    if (isEnabled) {
      return backgroundColor ?? theme.colorScheme.primary;
    } else {
      return disabledColor ?? (backgroundColor?.withOpacity(0.7) ?? theme.colorScheme.primary.withOpacity(0.7));
    }
  }
}
