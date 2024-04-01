import 'package:mipt_flutter_news/domain/model/article.dart';

abstract class AbstractNewsRepository {
  Future<List<Article>> getNews();
  Future<List<Article>> getFavoriteNews();
  Future<void> likeArticle(Article article);
  Future<void> dislikeArticle(Article article);
}
