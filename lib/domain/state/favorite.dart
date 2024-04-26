import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/resource.dart';
import 'package:mipt_flutter_news/internal/dependencies.dart';
import 'package:mipt_flutter_news/internal/init.dart';

class FavoriteNewsData {
  const FavoriteNewsData({this.news = const [], this.newsId = const {}});

  final List<Article> news;
  final Set<int> newsId;
}

class FavoriteNewsResource extends Resource<FavoriteNewsData> {
  const FavoriteNewsResource({super.data, super.loading});
}

class FavoriteNewsCubit extends Cubit<FavoriteNewsResource> {
  FavoriteNewsCubit() : super(const FavoriteNewsResource());

  Future<void> fetch() {
    emit(const FavoriteNewsResource(loading: true));
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
