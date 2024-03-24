import 'package:appnews/domain/entity/get_events/get_events_item.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/articles/page/components/articles_list.dart';
import 'package:appnews/presentation/articles/page/components/pagination_list.dart';
import 'package:appnews/shared/widgets/one_empty_state.dart';
import 'package:flutter/material.dart';

class ResultSearchStepPage extends StatelessWidget {
  const ResultSearchStepPage({super.key, required this.onTap, required this.getEvents, required this.searchController});
  final TextEditingController searchController;
  final GetEventsItem getEvents;
  final Function(int page) onTap;

  @override
  Widget build(BuildContext context) {
    if (getEvents.events.results.isEmpty) {
      return const OneEmptyState();
    } else {
      return ArticlesList(
        articles: getEvents.events.results.map(ActivityArticleItem.fromEvent).toList(),
        pagination: PaginationList(
          pages: getEvents.events.pages,
          selectedPage: getEvents.events.page,
          onTap: onTap,
        ),
      );
    }
  }
}
