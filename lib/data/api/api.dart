import 'package:injectable/injectable.dart';
import 'package:mipt_flutter_news/data/api/service/favorite.dart';
import 'package:mipt_flutter_news/data/api/service/news_api.dart';
import 'package:mipt_flutter_news/data/mapper/article.dart';
import 'package:mipt_flutter_news/data/mapper/favorite_article.dart';
import 'package:mipt_flutter_news/data/mapper/language_option.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';

enum LanguageOptions { ru, en, fr }

@lazySingleton
class Api {
  final NewsApiService _newsApiService;
  final FavoriteNewsApiService _favoriteNewsApiService;

  Api(this._newsApiService, this._favoriteNewsApiService);

  Future<List<Article>> getNews(
      {String? query, LanguageOptions? language}) async {
    return (await _newsApiService.getNews(
            query: query,
            language: LanguageOptionMapper.fromSortOption(language)))
        .map((article) => ArticleMapper.fromApi(article))
        .toList();
  }

  Future<List<Article>> getFavoriteNews() async {
    return (await _favoriteNewsApiService.getFavoriteNews())
        .map((article) => ArticleMapper.fromFavoriteApi(article))
        .toList();
  }

  Future<void> likeArticle(Article article) {
    return _favoriteNewsApiService
        .likeArticle(FavoriteArticleMapper.fromArticle(article));
  }

  Future<void> dislikeArticle(Article article) {
    return _favoriteNewsApiService
        .dislikeArticle(FavoriteArticleMapper.fromArticle(article));
  }
}
