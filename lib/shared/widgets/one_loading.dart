import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

class OneLoading extends StatefulWidget {
  const OneLoading({super.key});

  @override
  State<OneLoading> createState() => _OneLoadingState();
}

class _OneLoadingState extends State<OneLoading> with TickerProviderStateMixin {
  late final GifController _controller = GifController(vsync: this);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: PaddingConstants.immense * 3,
        width: PaddingConstants.immense * 3,
        child: Gif(
          image: const AssetImage('gif/loading.gif'),
          controller: _controller,
          autostart: Autostart.loop,
          placeholder: (context) => const SizedBox(),
          onFetchCompleted: () {
            _controller.reset();
            _controller.forward();
          },
        ),
      ),
    );
  }
}
