import 'package:injectable/injectable.dart';
import 'package:mipt_flutter_news/domain/repository/news.dart';

@lazySingleton
class Dependencies {
  final AbstractNewsRepository newsRepository;
  Dependencies(this.newsRepository);
}
