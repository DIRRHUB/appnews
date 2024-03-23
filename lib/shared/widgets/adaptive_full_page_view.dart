import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/one_app_bar.dart';
import 'package:appnews/shared/widgets/one_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class AdaptiveFullDialogPage<T> extends Page<T> {
  /// Creates a material page.
  const AdaptiveFullDialogPage({
    required this.child,
    required this.webWidth,
    this.title,
    this.maintainState = true,
    this.fullscreenDialog = false,
    this.onClose,
    required this.dialogContext,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  /// The content to be shown in the [Route] created by this page.
  final Widget child;

  /// The title widget
  final Widget? title;

  /// {@macro flutter.widgets.ModalRoute.maintainState}
  final bool maintainState;

  /// {@macro flutter.widgets.PageRoute.fullscreenDialog}
  final bool fullscreenDialog;

  final Function()? onClose;

  //Max container width on web
  final double webWidth;

  final BuildContext dialogContext;

  @override
  Route<T> createRoute(BuildContext context) {
    return _AdaptiveFullDialogPageState<T>(
      widget: child,
      settings: this,
      title: title,
      key: super.key,
      onClose: onClose,
      webWidth: webWidth,
      dialogContext: dialogContext,
    );
  }
}

class _AdaptiveFullDialogPageState<T> extends RawDialogRoute<T> {
  _AdaptiveFullDialogPageState({
    required this.widget,
    required this.webWidth,
    this.title,
    super.settings,
    this.key,
    this.onClose,
    required this.dialogContext,
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return AdaptiveFullPageDialogContainer(
              key: key,
              title: title,
              onClose: onClose,
              webWidth: webWidth,
              dialogContext: dialogContext,
              child: widget,
            );
          },
          transitionDuration: const Duration(milliseconds: 240),
        );
  final Widget widget;
  final Widget? title;
  final Key? key;
  final Function()? onClose;
  final double webWidth;
  final BuildContext dialogContext;
}

class AdaptiveFullPageDialogContainer extends StatelessWidget {
  const AdaptiveFullPageDialogContainer({
    super.key,
    required this.child,
    required this.webWidth,
    required this.dialogContext,
    this.title,
    this.onClose,
    this.titlePadding,
    this.webPadding,
    this.hasCloseButton = true,
    this.backgroundColor,
    this.smallBackgroundColor,
  });
  final Widget child;
  final Widget? title;
  final Function()? onClose;
  final EdgeInsets? titlePadding;
  final double webWidth;
  final EdgeInsets? webPadding;
  final BuildContext dialogContext;
  final bool hasCloseButton;
  final Color? backgroundColor;
  final Color? smallBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SlotLayout(
      config: <Breakpoint, SlotLayoutConfig>{
        const WidthPlatformBreakpoint(begin: SizeConstants.mediumPageBreakpoint, end: double.infinity): SlotLayout.from(
          key: const Key('AdaptiveFullPageView Bottom Navigation Medium'),
          builder: (_) {
            return Container(
              padding: webPadding,
              color: backgroundColor ?? Colors.transparent,
              child: Stack(
                children: [
                  if (hasCloseButton)
                    GestureDetector(
                      onTap: () {
                        onClose != null ? onClose?.call() : Navigator.pop(dialogContext);
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.transparent,
                      ),
                    ),
                  Material(
                    color: (hasCloseButton ? null : Colors.transparent),
                    type: hasCloseButton ? MaterialType.transparency : MaterialType.canvas,
                    child: Center(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(PaddingConstants.medium),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(BorderRadiusConstants.medium),
                              child: Container(
                                width: webWidth,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(BorderRadiusConstants.medium),
                                  border: Border.all(color: theme.colorScheme.inverseSurface),
                                ),
                                child: _buildMediumBody(context),
                              ),
                            ),
                          ),
                          if (hasCloseButton)
                            Positioned(
                              top: 0,
                              right: 0,
                              child: _buildCloseButton(context),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const WidthPlatformBreakpoint(begin: 0, end: SizeConstants.mediumPageBreakpoint): SlotLayout.from(
          key: const Key('AdaptiveFullPageView Bottom Navigation Small'),
          builder: (_) {
            return Scaffold(
              appBar: OneAppBar(
                title: title,
                closeAction: hasCloseButton ? _buildCloseButton(context) : const SizedBox(),
                color: theme.colorScheme.background,
              ),
              body: Container(
                color: smallBackgroundColor ?? theme.colorScheme.background,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    child,
                  ],
                ),
              ),
            );
          },
        ),
      },
    );
  }

  Widget _buildMediumBody(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: titlePadding ??
                  const EdgeInsets.only(
                    top: PaddingConstants.extraLarge,
                    left: PaddingConstants.extraLarge,
                    right: PaddingConstants.extraLarge,
                    bottom: PaddingConstants.extraImmense,
                  ),
              child: title,
            ),
          Expanded(child: child),
        ],
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return OneCloseButton(
      onTap: () {
        onClose != null ? onClose?.call() : Navigator.pop(dialogContext);
      },
    );
  }
}
