import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/resource.dart';
import 'package:mipt_flutter_news/internal/dependencies.dart';
import 'package:mipt_flutter_news/internal/init.dart';

class FavoriteNewsData {
  List<Article> news;
  Set<int> newsId;
  FavoriteNewsData({this.news = const [], this.newsId = const {}});
}

typedef FavoriteNewsResource = Resource<FavoriteNewsData>;

class FavoriteNewsCubit extends ResourceCubit<FavoriteNewsData> {
  @override
  Future<void> fetch() {
    emit(FavoriteNewsResource(loading: true));
    return Future(() async {
      var news =
          await getIt.get<Dependencies>().newsRepository.getFavoriteNews();
      emit(FavoriteNewsResource(
          data: FavoriteNewsData(
        news: news,
        newsId: {...news.map((article) => article.id)},
      )));
    });
  }

  void like(Article article) async {
    getIt.get<Dependencies>().newsRepository.likeArticle(article);
    emit(FavoriteNewsResource(
        data: FavoriteNewsData(
            news: [article, ...?state.data?.news],
            newsId: {article.id, ...?state.data?.newsId})));
  }

  void dislike(Article article) async {
    getIt.get<Dependencies>().newsRepository.dislikeArticle(article);

    Set<int> newsIdWithoutArticle = Set.from(state.data?.newsId ?? {});
    newsIdWithoutArticle.remove(article.id);

    emit(FavoriteNewsResource(
        data: FavoriteNewsData(
            news: state.data?.news
                    .where((element) => element.id != article.id)
                    .toList() ??
                [],
            newsId: newsIdWithoutArticle)));
  }
}
