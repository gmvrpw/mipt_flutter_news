import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/data/api/api.dart';
import 'package:mipt_flutter_news/domain/state/news.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:mipt_flutter_news/presentation/widgets/search_option.dart';

class LanguageSearchOption extends StatelessWidget {
  static final Map<LanguageOptions, String> mapper = {
    LanguageOptions.ru: "Russia",
    LanguageOptions.en: "English",
    LanguageOptions.fr: "French",
  };

  const LanguageSearchOption({super.key});

  @override
  Widget build(BuildContext context) {
    final setOptions = context.read<NewsCubit>().setOptions;
    return BlocBuilder<NewsCubit, NewsResource>(builder: (context, resource) {
      final language = resource.options.language;
      return SearchOption(
          label: "Language: ${mapper[language] ?? "-"}",
          items: mapper.entries
              .map((el) => SearchOptionItem(
                  label: el.value,
                  onPressed: () {
                    setOptions(language: el.key);
                    Navigator.pop(context);
                  }))
              .toList());
    });
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return TextField(
      onSubmitted: (query) =>
          context.read<NewsCubit>().setOptions(query: query),
      style: const TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: themeColors.contentBackground,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        hintText: 'Enter any query...',
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      collapsedHeight: 104.0,
      expandedHeight: 104.0,
      backgroundColor: themeColors.contentBackground,
      flexibleSpace: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(children: [
              SearchTextField(),
              Row(children: [LanguageSearchOption()])
            ])),
      ),
    );
  }
}
