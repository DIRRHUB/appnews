import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:equatable/equatable.dart';

class ArticlesState extends Equatable {
  const ArticlesState({
    required this.status,
    required this.errorMessage,
    required this.articles,
  });
  final OneStatus status;
  final String errorMessage;
  final List<ActivityArticleItem> articles;

  factory ArticlesState.initial() {
    return const ArticlesState(
      status: OneStatus.initial,
      errorMessage: '',
      articles: [],
    );
  }

  @override
  List<Object?> get props => [status, errorMessage, articles];

  ArticlesState copyWith({
    OneStatus? status,
    String? errorMessage,
    List<ActivityArticleItem>? articles,
  }) {
    return ArticlesState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      articles: articles ?? this.articles,
    );
  }
}
