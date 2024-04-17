import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A widget that shows an app bar for mobile view.
class OneAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OneAppBar({
    super.key,
    required this.title,
    required this.color,
    required this.closeAction,
    this.bottomWidget,
    this.appBarHeight = DimensionConstants.appBarHeight,
  });
  final Widget? title;
  final Color? color;
  final PreferredSizeWidget? bottomWidget;
  final double appBarHeight;
  final Widget closeAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      toolbarHeight: appBarHeight,
      title: title,
      bottom: bottomWidget,
      actions: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: PaddingConstants.medium), child: closeAction),
      ],
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: color),
      shadowColor: Colors.black,
      centerTitle: false,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
