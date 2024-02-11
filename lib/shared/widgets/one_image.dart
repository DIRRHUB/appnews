import 'package:appnews/shared/widgets/one_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OneImage extends StatelessWidget {
  const OneImage({
    this.imageLink,
    required this.radius,
    this.aspectRatio = 1,
    this.iconSize = 20,
    this.image,
  });
  final String? imageLink;
  final double radius;
  final double aspectRatio;
  final double iconSize;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: DecoratedBox(
          decoration: BoxDecoration(color: theme.colorScheme.background),
          child: _buildImageWidget(context),
        ),
      ),
    );
  }

  Widget _buildImageWidget(BuildContext context) {
    if (imageLink != null && image == null) {
      return _buildNetworkImage(context);
    } else if (imageLink == null && image != null) {
      return FittedBox(fit: BoxFit.cover, child: image!);
    } else {
      return Center(child: Icon(Icons.error, size: iconSize));
    }
  }

  Widget _buildNetworkImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageLink!,
      filterQuality: FilterQuality.high,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) {
        return const OneShimmer();
      },
      errorWidget: (context, url, error) {
        return Center(child: Icon(Icons.error, size: iconSize));
      },
      fit: BoxFit.cover,
    );
  }
}
