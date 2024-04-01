import 'package:mipt_flutter_news/data/api/model/favorite_article.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';

class FavoriteArticleMapper {
  static ApiFavoriteArticle fromArticle(Article article) {
    return ApiFavoriteArticle(
      id: article.id,
      sourceName: article.sourceName,
      sourceUrl: article.sourceUrl,
      title: article.title,
      description: article.description,
      urlToImage: article.urlToImage,
      publishedAt: article.publishedAt,
    );
  }
}
