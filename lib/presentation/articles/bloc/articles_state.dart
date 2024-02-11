import 'package:appnews/core/enums/home_article_type_enum.dart';
import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/domain/entity/get_articles/get_articles_item.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_item.dart';
import 'package:equatable/equatable.dart';

class ArticlesState extends Equatable {
  const ArticlesState({
    required this.status,
    required this.errorMessage,
    required this.type,
    required this.recentActivityActicles,
    required this.getArticles,
  });
  final OneStatus status;
  final String errorMessage;
  final HomeArticleType type;
  final RecentActivityActiclesItem recentActivityActicles;
  final GetArticlesItem getArticles;

  factory ArticlesState.initial() {
    return ArticlesState(
      status: OneStatus.initial,
      errorMessage: '',
      type: HomeArticleType.recent,
      recentActivityActicles: RecentActivityActiclesItem.empty(),
      getArticles: GetArticlesItem.empty(),
    );
  }

  @override
  List<Object?> get props => [status, errorMessage, recentActivityActicles, getArticles, type];

  ArticlesState copyWith({
    OneStatus? status,
    String? errorMessage,
    HomeArticleType? type,
    RecentActivityActiclesItem? recentActivityActicles,
    GetArticlesItem? getArticles,
  }) {
    return ArticlesState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      type: type ?? this.type,
      recentActivityActicles: recentActivityActicles ?? this.recentActivityActicles,
      getArticles: getArticles ?? this.getArticles,
    );
  }
}
