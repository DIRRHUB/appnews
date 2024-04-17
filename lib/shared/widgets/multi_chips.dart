import 'package:appnews/shared/widgets/one_chip.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ChipItem<T> extends Equatable {
  const ChipItem({
    required this.item,
    required this.label,
    this.isSelected = false,
    this.optionalLabel,
    this.avatar,
    this.onDeleted,
    this.option,
    this.color,
    this.selectedColor,
    this.highlightColor,
    this.splashColor,
    this.borderColor,
    this.onTap,
    this.labelStyle,
    this.isContentCenter = false,
  });
  final T item;
  final String label;
  final Widget? optionalLabel;
  final bool isSelected;
  final Widget? avatar;
  final Widget? option;
  final Function(ChipItem<T> selectedOptions)? onDeleted;
  final Color? color;
  final Color? selectedColor;
  final Color? splashColor;
  final Color? highlightColor;
  final Color? borderColor;
  final TextStyle? labelStyle;
  final Function? onTap;
  final bool isContentCenter;

  @override
  List<Object?> get props => [
        item,
        label,
        isSelected,
        avatar,
        optionalLabel,
        onDeleted,
        option,
        color,
        selectedColor,
        borderColor,
        splashColor,
        highlightColor,
        onTap,
        labelStyle,
        isContentCenter,
      ];
}

/// Custom widget for multiple chips
class MultiChips<T> extends StatelessWidget {
  const MultiChips({
    super.key,
    required this.options,
    this.onChanged,
    this.isMultipleChoice = false,
    this.isRequired = false,
    this.selectedColor,
    this.color,
    this.radius,
    this.border,
    this.spacing = 2,
    this.runSpacing = 2,
    this.padding,
    this.deleteSpaceWidth,
    this.deleteColorIcon,
    this.isFlexible = false,
  });
  final List<ChipItem<T>> options;
  final Function(List<T> selectedOptions)? onChanged;
  final bool isMultipleChoice;
  final bool isRequired;
  final Color? selectedColor;
  final Color? color;
  final BorderRadius? radius;
  final BoxBorder? border;
  final double spacing;
  final double runSpacing;
  final EdgeInsets? padding;
  final double? deleteSpaceWidth;
  final Color? deleteColorIcon;
  final bool isFlexible;

  @override
  Widget build(BuildContext context) {
    final List<ChipItem<T>> selectedValues = options.where((element) => element.isSelected).toList();
    if (isFlexible) {
      return Row(
        children: options.map((i) {
          return _buildChip(context, i, selectedValues);
        }).expand((widget) {
          return [
            Expanded(child: widget),
            SizedBox(width: spacing),
          ];
        }).toList()
          ..removeLast(),
      );
    } else {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: spacing,
        runSpacing: runSpacing,
        children: options.map((option) {
          return _buildChip(context, option, selectedValues);
        }).toList(),
      );
    }
  }

  Widget _buildChip(BuildContext context, ChipItem<T> option, List<ChipItem<T>> selectedValues) {
    return OneChip(
      label: _buildTitle(context, option),
      padding: padding,
      border: border,
      avatar: option.avatar,
      option: option.option,
      radius: radius,
      splashColor: option.splashColor,
      highlightColor: option.highlightColor,
      onSelected: (value) {
        if (isMultipleChoice) {
          if (value) {
            selectedValues.add(option);
          } else {
            if (isRequired && selectedValues.length < 2) {
              return;
            }
            selectedValues.remove(option);
          }
        } else {
          if (value) {
            selectedValues.clear();
            selectedValues.add(option);
          } else {
            if (isRequired && selectedValues.length < 2) {
              return;
            }
            selectedValues.remove(option);
          }
        }
        option.onTap?.call();
        onChanged?.call(selectedValues.map((e) => e.item).toList());
      },
      isContentCenter: option.isContentCenter,
      onDeleted: (option.onDeleted != null) ? () => option.onDeleted!(option) : null,
      color: option.color,
      selectedColor: option.selectedColor,
      borderColor: option.borderColor,
      isSelected: option.isSelected,
      deleteSpaceWidth: deleteSpaceWidth,
      deleteColorIcon: deleteColorIcon,
    );
  }

  Widget _buildTitle(BuildContext context, ChipItem<T> option) {
    if (option.optionalLabel != null) {
      return option.optionalLabel!;
    } else {
      return Text(
        option.label,
        style: option.labelStyle ?? Theme.of(context).primaryTextTheme.bodyLarge,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
