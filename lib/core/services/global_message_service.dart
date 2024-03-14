import 'package:appnews/core/enums/message_type_enum.dart';
import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/one_close_button.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

abstract class GlobalMessageService {
  static void show({MessageType type = MessageType.error, String? value, Color? color}) {
    final BuildContext? context = GlobalConstants.navState.currentContext;
    if (context != null) {
      final theme = Theme.of(context);
      showToastWidget(
        Container(
          width: SizeConstants.toastWidth,
          decoration: BoxDecoration(
            color: theme.colorScheme.inverseSurface,
            borderRadius: BorderRadius.circular(BorderRadiusConstants.medium),
            border: Border.all(color: theme.colorScheme.surfaceVariant),
          ),
          padding: const EdgeInsets.all(PaddingConstants.large),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(
                    _getIcon(context, type),
                    size: DimensionConstants.iconLarge,
                    color: _getColor(context, type, color),
                  ),
                  const SizedBox(width: PaddingConstants.large),
                  Expanded(
                    child: Text(
                      _getMessageType(context, type),
                      style: theme.textTheme.bodySmall?.copyWith(color: _getColor(context, type, color)),
                    ),
                  ),
                  OneCloseButton(
                    onTap: () {
                      dismissAllToast(showAnim: true);
                    },
                    backgroundColor: theme.colorScheme.inverseSurface,
                    isCircle: false,
                  ),
                ],
              ),
              if (value != null) ...[
                const SizedBox(height: PaddingConstants.normal),
                Row(
                  children: [
                    const SizedBox(width: PaddingConstants.extraImmense),
                    Flexible(
                      child: SelectableText(
                        value,
                        style: theme.primaryTextTheme.bodyMedium,
                        maxLines: 4,
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
        position: ToastPosition.bottom,
        duration: const Duration(seconds: 5),
        animationCurve: Curves.easeOut,
        dismissOtherToast: true,
        handleTouch: true,
      );
    }
  }

  static IconData _getIcon(BuildContext context, MessageType type) {
    switch (type) {
      case MessageType.success:
        return Icons.check;
      case MessageType.error:
        return Icons.error;
    }
  }

  static Color _getColor(BuildContext context, MessageType type, Color? color) {
    switch (type) {
      case MessageType.success:
        return Colors.green;
      case MessageType.error:
        return Colors.red;
    }
  }

  static String _getMessageType(BuildContext context, MessageType type) {
    switch (type) {
      case MessageType.success:
        return 'Success';
      case MessageType.error:
        return 'Error';
    }
  }
}
