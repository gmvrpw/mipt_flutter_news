import 'package:injectable/injectable.dart';
import 'package:mipt_flutter_news/data/api/api.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/repository/news.dart';

@LazySingleton(as: AbstractNewsRepository)
class NewsRepository implements AbstractNewsRepository {
  final Api _api;

  NewsRepository(this._api);

  @override
  Future<List<Article>> getNews({String? query, LanguageOptions? language}) {
    return _api.getNews(query: query, language: language);
  }

  @override
  Future<List<Article>> getFavoriteNews() {
    return _api.getFavoriteNews();
  }

  @override
  Future<void> likeArticle(Article article) {
    return _api.likeArticle(article);
  }

  @override
  Future<void> dislikeArticle(Article article) {
    return _api.dislikeArticle(article);
  }
}
