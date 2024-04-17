import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

/// Custom empty state widget with a gif.
class OneEmptyState extends StatefulWidget {
  const OneEmptyState({super.key});

  @override
  State<OneEmptyState> createState() => _OneEmptyStateState();
}

class _OneEmptyStateState extends State<OneEmptyState> with TickerProviderStateMixin {
  late final GifController _controller = GifController(vsync: this);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingConstants.extraImmensePlus * 3,
      width: PaddingConstants.extraImmensePlus * 3,
      child: Gif(
        image: const AssetImage('gif/empty_state.gif'),
        controller: _controller,
        autostart: Autostart.loop,
        placeholder: (context) => const SizedBox(),
        onFetchCompleted: () {
          _controller.reset();
          _controller.forward();
        },
      ),
    );
  }
}
