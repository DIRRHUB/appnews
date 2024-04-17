// ignore_for_file: avoid_positional_boolean_parameters

import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/one_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

/// Custom widget for a single dropdown
class OneDropdown<T> extends StatefulWidget {
  const OneDropdown({
    super.key,
    required this.items,
    this.onChanged,
    this.onEditingText,
    this.onValidate,
    this.hintText = '',
    this.value,
    this.borderRadius,
    this.hasInputField = false,
    this.undefinedItem,
    this.controller,
    this.inputTextStyle,
    this.itemTextStyle,
    this.animationType,
    this.emptyItem,
    this.textController,
    this.onOpen,
    this.onClose,
    this.maxExpandedItemsCount = 6,
  });
  final List<OneDropdownItem<T>> items;
  final OneDropdownItem<T>? value;
  final Function(T value)? onChanged;
  final Function(String value)? onEditingText;
  final String? Function(String?)? onValidate;
  final String hintText;
  final BorderRadius? borderRadius;
  final bool hasInputField;
  final OneDropdownItem<T>? undefinedItem;
  final OneDropdownItem<T>? emptyItem;
  final DropdownController? controller;
  final TextEditingController? textController;
  final TextStyle? inputTextStyle;
  final TextStyle? itemTextStyle;
  final DropdownAnimationType? animationType;
  final Function()? onOpen;
  final Function()? onClose;
  final int maxExpandedItemsCount;

  @override
  State<OneDropdown<T>> createState() => _OneDropdownState<T>();
}

class _OneDropdownState<T> extends State<OneDropdown<T>> {
  late final DropdownController dropdownController;
  late final TextEditingController textController = widget.textController ?? TextEditingController();
  final double itemHeight = 52;
  String? selectedText;
  T? selectedValue;
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value?.value;
    selectedText = widget.value?.label;
    dropdownController = widget.controller ?? DropdownController(duration: const Duration(milliseconds: 300));
    if (widget.hasInputField) {
      textController.addListener(
        () {
          if (widget.onEditingText != null) {
            widget.onEditingText?.call(textController.text);
            selectedText = textController.text;
          }
        },
      );
    }
  }

  @override
  void didUpdateWidget(covariant OneDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.items != oldWidget.items) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (hasFocus) {
          dropdownController.open();
        } else {
          dropdownController.close();
        }
      });
    }
  }

  @override
  void dispose() {
    dropdownController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: Focus(
        onFocusChange: (value) {
          setState(() {
            hasFocus = value;
          });
          widget.onOpen?.call();
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CoolDropdown<T>(
            controller: dropdownController,
            dropdownList: widget.items,
            defaultItem: widget.value,
            onChange: (value) {
              setState(() {
                selectedValue = value;
              });
              dropdownController.close();
              widget.onChanged?.call(value);
            },
            textController: textController,
            undefinedItem: widget.undefinedItem,
            emptyItem: widget.emptyItem,
            hintText: widget.hintText,
            hasInputField: widget.hasInputField,
            inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
            onValidate: (value) {
              return widget.onValidate?.call(value);
            },
            onClose: () {
              setState(() {
                hasFocus = false;
                selectedValue = null;
                selectedText = null;
              });
              widget.onClose?.call();
            },
            inputDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                borderSide: BorderSide(color: theme.colorScheme.secondary),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                borderSide: BorderSide(color: theme.colorScheme.error),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                borderSide: BorderSide(color: theme.colorScheme.error),
              ),
              disabledBorder: InputBorder.none,
              filled: true,
              fillColor: theme.colorScheme.inverseSurface,
              errorStyle: theme.primaryTextTheme.bodyLarge?.copyWith(color: theme.colorScheme.error),
              hintStyle: theme.primaryTextTheme.bodyLarge?.copyWith(color: theme.colorScheme.surfaceTint),
              alignLabelWithHint: true,
              hintText: widget.hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: PaddingConstants.medium,
                vertical: PaddingConstants.normal,
              ),
            ),
            resultOptions: ResultOptions(
              backgroundIconColor: Colors.transparent,
              iconRadius: BorderRadius.circular(BorderRadiusConstants.normal),
              padding: EdgeInsets.only(left: widget.hasInputField ? 0 : PaddingConstants.medium),
              width: double.infinity,
              inputTextField: widget.inputTextStyle?.copyWith(color: _getContentColor(context)) ??
                  theme.primaryTextTheme.bodyLarge?.copyWith(color: _getContentColor(context)) ??
                  const TextStyle(),
              textStyle: widget.inputTextStyle?.copyWith(color: _getContentColor(context)) ??
                  theme.primaryTextTheme.bodyLarge?.copyWith(color: _getContentColor(context)) ??
                  const TextStyle(),
              placeholderTextStyle: widget.inputTextStyle?.copyWith(color: _getContentColor(context)) ??
                  theme.primaryTextTheme.bodyLarge?.copyWith(color: _getContentColor(context)) ??
                  const TextStyle(),
              boxDecoration: BoxDecoration(
                color: theme.colorScheme.inverseSurface,
                borderRadius: const BorderRadius.all(Radius.circular(BorderRadiusConstants.large)),
              ),
              openBoxDecoration: BoxDecoration(
                color: theme.colorScheme.inverseSurface,
                borderRadius: const BorderRadius.all(Radius.circular(BorderRadiusConstants.large)),
                border: Border.all(color: theme.colorScheme.secondary),
              ),
              errorBoxDecoration: BoxDecoration(
                color: theme.colorScheme.inverseSurface,
                borderRadius: const BorderRadius.all(Radius.circular(BorderRadiusConstants.large)),
              ),
              cursorColor: theme.colorScheme.secondary,
              icon: SizedBox(
                width: PaddingConstants.extraLarge,
                height: PaddingConstants.extraLarge,
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: _getContentColor(context),
                    ),
                  ),
                ),
              ),
              render: ResultRender.all,
              placeholder: widget.hintText,
              isMarquee: false,
            ),
            maxExpandedHeight: itemHeight,
            maxExpandedItemsCount: widget.maxExpandedItemsCount,
            dropdownOptions: DropdownOptions(
              color: theme.colorScheme.inverseSurface,
              splashColor: theme.colorScheme.surfaceVariant,
              top: PaddingConstants.large,
              height: itemHeight * widget.maxExpandedItemsCount, //max expanded dropdown height
              gap: DropdownGap.zero,
              shadows: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5, spreadRadius: 1)],
              undefinedDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
              ),
              emptyDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
              ),
              borderSide: BorderSide.none,
              padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.medium),
              align: DropdownAlign.left,
              //DropdownAnimation.size has problems with opening above ResultBox
              animationType: widget.animationType ?? DropdownAnimationType.size,
            ),
            dropdownTriangleOptions: const DropdownTriangleOptions(
              height: 0,
            ),
            dropdownItemOptions: DropdownItemOptions(
              mainAxisAlignment: MainAxisAlignment.start,
              render: DropdownItemRender.all,
              height: itemHeight,
              padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.medium),
              selectedPadding: const EdgeInsets.symmetric(horizontal: 0),
              //MARK: Dont use theme, it doesn't work with animation in this widget
              selectedTextStyle: widget.itemTextStyle?.copyWith(color: _getContentColor(context)) ??
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: theme.colorScheme.onPrimary)
                      .copyWith(color: _getContentColor(context)),
              textStyle: widget.itemTextStyle?.copyWith(color: _getContentColor(context)) ??
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: theme.colorScheme.onPrimary)
                      .copyWith(color: _getContentColor(context)),
              boxDecoration: BoxDecoration(
                color: theme.colorScheme.inverseSurface,
                borderRadius: const BorderRadius.all(Radius.circular(BorderRadiusConstants.large)),
              ),
              selectedBoxDecoration: BoxDecoration(
                color: theme.colorScheme.surfaceVariant,
                borderRadius: const BorderRadius.all(Radius.circular(BorderRadiusConstants.large)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getContentColor(BuildContext context) {
    final theme = Theme.of(context);
    if (widget.hasInputField) {
      if (hasFocus || (selectedText != null && selectedText != '')) {
        return theme.colorScheme.onPrimary;
      } else {
        return theme.colorScheme.surfaceTint;
      }
    } else {
      if (hasFocus || selectedValue != null) {
        return theme.colorScheme.onPrimary;
      } else {
        return theme.colorScheme.surfaceTint;
      }
    }
  }
}
