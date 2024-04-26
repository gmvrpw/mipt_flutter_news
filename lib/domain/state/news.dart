import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/data/api/api.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/resource.dart';
import 'package:mipt_flutter_news/internal/dependencies.dart';
import 'package:mipt_flutter_news/internal/init.dart';

class NewsOptions {
  const NewsOptions({this.query, this.language});

  final String? query;
  final LanguageOptions? language;
}

class NewsResource extends Resource<List<Article>> {
  const NewsResource(
      {super.data, super.loading, this.options = const NewsOptions()});
  final NewsOptions options;
}

class NewsCubit extends Cubit<NewsResource> {
  NewsCubit() : super(const NewsResource()) {
    fetch();
  }

  Future<void> fetch() async {
    emit(NewsResource(loading: true, data: null, options: state.options));
    return Future(() async {
      emit(NewsResource(
          loading: false,
          data: await getIt.get<Dependencies>().newsRepository.getNews(
              query: state.options.query, language: state.options.language),
          options: state.options));
    });
  }

  Future<void> setOptions({String? query, LanguageOptions? language}) async {
    NewsOptions options = NewsOptions(
        query: query ?? state.options.query,
        language: language ?? state.options.language);

    emit(NewsResource(loading: true, data: null, options: state.options));
    return Future(() async {
      emit(NewsResource(
          loading: false,
          data: await getIt
              .get<Dependencies>()
              .newsRepository
              .getNews(query: options.query, language: options.language),
          options: options));
    });
  }
}
