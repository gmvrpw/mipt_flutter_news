import 'package:mipt_flutter_news/data/api/api.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';

abstract class AbstractNewsRepository {
  Future<List<Article>> getNews({String? query, LanguageOptions? language});
  Future<List<Article>> getFavoriteNews();
  Future<void> likeArticle(Article article);
  Future<void> dislikeArticle(Article article);
}
