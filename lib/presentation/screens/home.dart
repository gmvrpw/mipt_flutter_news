import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/favorite.dart';
import 'package:mipt_flutter_news/domain/state/news.dart';
import 'package:mipt_flutter_news/presentation/screens/article.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:mipt_flutter_news/presentation/widgets/article_card.dart';

class NewsLine extends StatelessWidget {
  const NewsLine({super.key, required this.news, required this.onRefresh});

  final Future<void> Function() onRefresh;
  final List<Article>? news;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;
    return news != null
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            constraints: const BoxConstraints(maxWidth: 800.0),
            width: double.infinity,
            child: RefreshIndicator(
              color: themeColors.loadingForeground,
              backgroundColor: themeColors.loadingBackground,
              onRefresh: onRefresh,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: news?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    var article = news![index];
                    return ArticleCard(
                        key: ObjectKey(article.id),
                        article: article,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  ArticleScreen(article: article),
                            ),
                          );
                        });
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 8.0,
                    );
                  }),
            ))
        : const Text("Loading");
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            backgroundColor: themeColors.background,
            appBar: AppBar(
                backgroundColor: themeColors.background,
                shadowColor: Colors.transparent,
                elevation: 0,
                title: Text("News",
                    style: TextStyle(
                        color: themeColors.foreground,
                        fontSize: 48.0,
                        fontWeight: FontWeight.w600)),
                notificationPredicate: (ScrollNotification notification) {
                  return notification.depth == 1;
                },
                scrolledUnderElevation: 4.0,
                bottom: const TabBar(tabs: [
                  Tab(text: "New"),
                  Tab(text: "Favorite"),
                ])),
            bottomNavigationBar: NavigationBar(
                height: 60.0,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                onDestinationSelected: (int index) {},
                destinations: const <Widget>[
                  NavigationDestination(
                    selectedIcon: Icon(Icons.home),
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    selectedIcon: Icon(Icons.settings),
                    icon: Badge(child: Icon(Icons.settings_outlined)),
                    label: 'Settings',
                  ),
                ]),
            body: TabBarView(children: [
              BlocBuilder<NewsCubit, NewsResource>(
                builder: (context, resource) => NewsLine(
                    news: resource.data,
                    onRefresh: context.read<NewsCubit>().fetch),
              ),
              BlocBuilder<FavoriteNewsCubit, FavoriteNewsResource>(
                builder: (context, resource) => NewsLine(
                    news: resource.data?.news,
                    onRefresh: context.read<FavoriteNewsCubit>().fetch),
              ),
            ])));
  }
}
