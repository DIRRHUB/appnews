// ignore_for_file: avoid_positional_boolean_parameters

import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

/// Custom widget for a single chip
class OneChip extends StatelessWidget {
  const OneChip({
    super.key,
    required this.label,
    this.onSelected,
    this.isSelected = false,
    this.avatar,
    this.onDeleted,
    this.color,
    this.selectedColor,
    this.splashColor,
    this.highlightColor,
    this.radius,
    this.border,
    this.height,
    this.width,
    this.padding,
    this.option,
    this.borderColor,
    this.deleteSpaceWidth,
    this.deleteColorIcon,
    this.isContentCenter = false,
  });
  final Widget label;
  final Widget? avatar;
  final Widget? option;
  final bool isSelected;
  final Function(bool value)? onSelected;
  final Function()? onDeleted;
  final Color? color;
  final Color? selectedColor;
  final Color? splashColor;
  final Color? highlightColor;
  final Color? borderColor;
  final BorderRadius? radius;
  final BoxBorder? border;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final double? deleteSpaceWidth;
  final Color? deleteColorIcon;
  final bool isContentCenter;

  BoxBorder? _getBorder(BuildContext context) {
    if (border == null) {
      return Border.all(color: _getBorderColor(context));
    }
    return border;
  }

  EdgeInsets _getPadding() {
    if (padding == null) {
      if (option == null) {
        return const EdgeInsets.symmetric(horizontal: PaddingConstants.normal, vertical: PaddingConstants.small);
      } else if (onDeleted == null && option != null) {
        return const EdgeInsets.only(
          left: PaddingConstants.normal,
          right: PaddingConstants.small,
          top: PaddingConstants.small,
          bottom: PaddingConstants.small,
        );
      } else {
        return const EdgeInsets.only(
          left: PaddingConstants.normal,
          top: PaddingConstants.normal,
          bottom: PaddingConstants.normal,
          right: PaddingConstants.small,
        );
      }
    } else {
      return padding!;
    }
  }

  Color _getColor(BuildContext context) {
    final theme = Theme.of(context);
    if (color == null) {
      return theme.colorScheme.background;
    } else {
      return color!;
    }
  }

  Color _getSelectedColor(BuildContext context) {
    final theme = Theme.of(context);
    if (selectedColor == null) {
      return theme.colorScheme.primary;
    } else {
      return selectedColor!;
    }
  }

  Color _getBorderColor(BuildContext context) {
    final theme = Theme.of(context);
    if (borderColor == null) {
      return theme.colorScheme.primary;
    } else {
      return borderColor!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: isSelected ? _getSelectedColor(context) : _getColor(context),
        borderRadius: radius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
        child: InkWell(
          onTap: () {
            onSelected?.call(!isSelected);
          },
          focusColor: selectedColor ?? theme.colorScheme.primary,
          highlightColor: highlightColor ?? theme.colorScheme.primary,
          splashColor: splashColor ?? theme.colorScheme.primary,
          hoverColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: radius ?? BorderRadius.circular(BorderRadiusConstants.extraLarge),
              border: _getBorder(context),
            ),
            child: Padding(
              padding: _getPadding(),
              child: isContentCenter ? Center(child: _buildContent(context)) : _buildContent(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (avatar != null) ...[
          avatar!,
          const SizedBox(width: PaddingConstants.extraSmall),
        ],
        Flexible(child: label),
        if (option != null) ...[
          const SizedBox(width: PaddingConstants.normal),
          option!,
        ],
        if (onDeleted != null) ...[
          SizedBox(width: deleteSpaceWidth ?? PaddingConstants.extraSmall),
          ClipOval(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                hoverColor: Colors.transparent,
                highlightColor: theme.colorScheme.primary.withOpacity(0.75),
                focusColor: theme.colorScheme.onPrimary,
                onTap: onDeleted,
                child: Container(
                  height: PaddingConstants.large,
                  width: PaddingConstants.large,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      size: DimensionConstants.iconExtraSmall,
                      color: deleteColorIcon ?? theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
