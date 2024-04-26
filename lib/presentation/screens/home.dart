import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/news.dart';
import 'package:mipt_flutter_news/presentation/screens/article.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:mipt_flutter_news/presentation/widgets/article_card.dart';
import 'package:mipt_flutter_news/presentation/widgets/search.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return SliverAppBar(
      floating: true,
      snap: true,
      expandedHeight: 64.0,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(children: [
          Text(title, style: TextStyle(color: themeColors.foreground))
        ]),
      ),
    );
  }
}

class NewsLine extends StatelessWidget {
  const NewsLine({
    super.key,
    required this.news,
  });

  final List<Article> news;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          var article = news[index];
          return ArticleCard(
              key: ObjectKey(article.id),
              article: article,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArticleScreen(article: article),
                  ),
                );
              });
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 8.0,
          );
        });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Scaffold(
      backgroundColor: themeColors.background,
      body: BlocBuilder<NewsCubit, NewsResource>(builder: (context, resource) {
        return SafeArea(
            child: Container(
                constraints: const BoxConstraints(maxWidth: 800.0),
                width: double.infinity,
                child: RefreshIndicator(
                  color: themeColors.loadingForeground,
                  backgroundColor: themeColors.loadingBackground,
                  onRefresh: context.read<NewsCubit>().fetch,
                  edgeOffset: 64.0,
                  child: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      slivers: [
                        const Search(),
                        !resource.loading
                            ? SliverPadding(
                                padding: const EdgeInsets.all(8.0),
                                sliver: NewsLine(news: resource.data!))
                            : const SliverToBoxAdapter(child: Text("Loading")),
                      ]),
                )));
      }),
      bottomNavigationBar: NavigationBar(
          height: 60.0,
          backgroundColor: themeColors.contentBackground,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (int index) {},
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.star),
              icon: Icon(Icons.star_border),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings),
              icon: Badge(child: Icon(Icons.settings_outlined)),
              label: 'Settings',
            ),
          ]),
    );
  }
}
