import 'package:appnews/shared/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

/// A widget that shows different content based on the screen size.
class AdaptiveSplittedView extends StatelessWidget {
  const AdaptiveSplittedView({
    super.key,
    required this.childMedium,
    required this.childSmall,
    this.backgroundColor,
  });
  final Widget childMedium;
  final Widget? childSmall;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SlotLayout(
      config: <Breakpoint, SlotLayoutConfig>{
        const WidthPlatformBreakpoint(begin: SizeConstants.mediumPageBreakpoint): SlotLayout.from(
          key: const Key('AdaptiveFullPageView Bottom Navigation Medium'),
          builder: (_) {
            return childMedium;
          },
        ),
        const WidthPlatformBreakpoint(begin: 0, end: SizeConstants.mediumPageBreakpoint): SlotLayout.from(
          key: const Key('AdaptiveFullPageView Bottom Navigation Small'),
          builder: (_) {
            return childSmall ?? childMedium;
          },
        ),
      },
    );
  }
}
