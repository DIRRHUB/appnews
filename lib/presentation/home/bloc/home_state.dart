import 'package:appnews/core/enums/home_step_enum.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.article,
    required this.step,
  });
  final ActivityArticleItem article;
  final HomeStep step;

  factory HomeState.initial() {
    return HomeState(article: ActivityArticleItem.empty(), step: HomeStep.initial);
  }

  @override
  List<Object?> get props => [article, step];

  HomeState copyWith({
    ActivityArticleItem? article,
    HomeStep? step,
  }) {
    return HomeState(
      article: article ?? this.article,
      step: step ?? this.step,
    );
  }
}
