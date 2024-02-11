import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.article,
  });
  final ActivityArticleItem article;

  factory HomeState.initial() {
    return HomeState(article: ActivityArticleItem.empty());
  }

  @override
  List<Object?> get props => [article];

  HomeState copyWith({
    ActivityArticleItem? article,
  }) {
    return HomeState(
      article: article ?? this.article,
    );
  }
}
