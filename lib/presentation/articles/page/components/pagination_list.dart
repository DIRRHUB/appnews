import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_scroll_behavior.dart';
import 'package:flutter/material.dart';

/// PaginationList is a widget for displaying pagination list.
/// The selected page will be highlighted.
/// The onTap function will be called when a page is tapped.
class PaginationList extends StatelessWidget {
  const PaginationList({super.key, required this.selectedPage, required this.pages, required this.onTap});
  final int pages;
  final int selectedPage;
  final Function(int page) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: PaddingConstants.extraImmense,
      child: ScrollConfiguration(
        behavior: OneMouseScrollBehavior(),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: pages,
          itemBuilder: (context, index) {
            final page = index + 1;
            return Material(
              borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
              color: selectedPage == page ? theme.colorScheme.primary : Colors.transparent,
              child: InkWell(
                onTap: () {
                  onTap(index + 1);
                },
                borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                child: Container(
                  height: PaddingConstants.extraImmense,
                  width: PaddingConstants.extraImmense,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                    border: Border.all(color: theme.colorScheme.surfaceVariant),
                  ),
                  padding: const EdgeInsets.all(PaddingConstants.small),
                  child: Center(
                    child: Text(
                      page.toString(),
                      style: theme.primaryTextTheme.bodyLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: PaddingConstants.extraSmall);
          },
        ),
      ),
    );
  }
}
