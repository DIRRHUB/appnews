import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class OneCard extends StatefulWidget {
  const OneCard({
    super.key,
    required this.child,
    this.radius = BorderRadiusConstants.large,
    this.onTap,
  });
  final Widget child;
  final double radius;
  final Function()? onTap;

  @override
  State<OneCard> createState() => _OneCardState();
}

class _OneCardState extends State<OneCard> with TickerProviderStateMixin {
  bool hasZoom = false;
  late final AnimationController controller = AnimationController(
    duration: const Duration(milliseconds: 100),
    vsync: this,
  );
  final Tween<double> scale = Tween<double>(begin: 1, end: 1.015);
  late final Animation<double> animation = scale.animate(
    CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn,
    ),
  );

  void _startZoomAnimation(bool value) {
    setState(() {
      hasZoom = value;
    });
    if (value) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onTap == null) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius)),
        child: widget.child,
      );
    } else {
      return InkWell(
        onTap: widget.onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(widget.radius),
        child: ScaleTransition(
          scale: animation,
          child: MouseRegion(
            cursor: MaterialStateMouseCursor.clickable,
            onEnter: (_) {
              _startZoomAnimation(true);
            },
            onExit: (_) {
              _startZoomAnimation(false);
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius)),
              child: widget.child,
            ),
          ),
        ),
      );
    }
  }
}
