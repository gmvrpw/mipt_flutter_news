import 'package:mipt_flutter_news/data/api/api.dart';

class LanguageOptionMapper {
  static final _mappings = <LanguageOptions, String>{
    LanguageOptions.ru: "ru",
    LanguageOptions.en: "en",
    LanguageOptions.fr: "fr",
  };

  static String? fromSortOption(LanguageOptions? option) {
    return _mappings[option];
  }
}
