import 'package:mipt_flutter_news/data/api/model/article.dart';
import 'package:mipt_flutter_news/data/api/model/favorite_article.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';

class ArticleMapper {
  static Article fromApi(ApiArticle article) {
    return Article(
      id: article.description.hashCode,
      sourceName: article.source.name,
      sourceUrl: article.url,
      title: article.title,
      description: article.description,
      urlToImage: article.urlToImage,
      publishedAt: article.publishedAt,
    );
  }

  static Article fromFavoriteApi(ApiFavoriteArticle article) {
    return article as Article;
  }
}
