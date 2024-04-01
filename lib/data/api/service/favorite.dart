import 'package:injectable/injectable.dart';
import 'package:localstore/localstore.dart';
import 'package:mipt_flutter_news/data/api/model/article.dart';
import 'package:mipt_flutter_news/data/api/model/favorite_article.dart';

@lazySingleton
class FavoriteNewsApiService {
  static const _collection = 'favorite_news';

  Future<List<ApiFavoriteArticle>> getFavoriteNews() async {
    var db = Localstore.instance;
    var articles = await db.collection(_collection).get();
    return articles == null
        ? []
        : articles.values
            .where((element) => element != null)
            .map((article) => ApiArticle.fromJson(article))
            .toList() as List<ApiFavoriteArticle>;
  }

  Future<void> likeArticle(ApiFavoriteArticle article) async {
    var db = Localstore.instance;
    db.collection(_collection).doc(article.id.toString()).set(article.toJson());
  }

  Future<void> dislikeArticle(ApiFavoriteArticle article) async {
    var db = Localstore.instance;
    return await db.collection(_collection).doc(article.id.toString()).delete();
  }
}
