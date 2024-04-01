import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/resource.dart';
import 'package:mipt_flutter_news/internal/dependencies.dart';
import 'package:mipt_flutter_news/internal/init.dart';

typedef NewsResource = Resource<List<Article>>;

class NewsCubit extends ResourceCubit<List<Article>> {
  NewsCubit() {
    fetch();
  }

  @override
  Future<void> fetch() async {
    emit(NewsResource(loading: true, data: state.data));
    return Future(() async {
      emit(NewsResource(
          data: await getIt.get<Dependencies>().newsRepository.getNews()));
    });
  }
}
