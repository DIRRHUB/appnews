import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

/// Widget for search expanded tile in the search page
class SearchExpandedTile extends StatefulWidget {
  const SearchExpandedTile({super.key, required this.child, required this.title});
  final String title;
  final Widget child;

  @override
  State<SearchExpandedTile> createState() => _SearchExpandedTileState();
}

class _SearchExpandedTileState extends State<SearchExpandedTile> {
  late final theme = Theme.of(context);
  final controller = ExpandedTileController();

  @override
  Widget build(BuildContext context) {
    return ExpandedTile(
      title: Text(
        widget.title,
        style: theme.primaryTextTheme.bodyLarge,
      ),
      content: widget.child,
      controller: controller,
      contentseparator: 0,
      disableAnimation: true,
      theme: ExpandedTileThemeData(
        headerColor: theme.colorScheme.surface,
        headerSplashColor: Colors.transparent,
        headerRadius: BorderRadius.circular(BorderRadiusConstants.large),
        expandedHeaderRadius: const BorderRadius.only(
          topRight: Radius.circular(BorderRadiusConstants.large),
          topLeft: Radius.circular(BorderRadiusConstants.large),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
        expandedContentRadius: const BorderRadius.only(
          topRight: Radius.zero,
          topLeft: Radius.zero,
          bottomLeft: Radius.circular(BorderRadiusConstants.large),
          bottomRight: Radius.circular(BorderRadiusConstants.large),
        ),
        contentRadius: BorderRadius.circular(BorderRadiusConstants.large),
        contentBackgroundColor: theme.colorScheme.surface,
        headerPadding: const EdgeInsets.all(PaddingConstants.medium),
        contentPadding: const EdgeInsets.all(PaddingConstants.medium),
      ),
    );
  }
}
