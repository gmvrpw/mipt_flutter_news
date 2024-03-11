import 'package:flutter/material.dart';
import 'package:mipt_flutter_news/api/news.dart';
import 'package:mipt_flutter_news/models/article.dart';
import 'package:mipt_flutter_news/screens/article.dart';
import 'package:mipt_flutter_news/themes/controller.dart';
import 'package:mipt_flutter_news/themes/themes.dart';
import 'package:mipt_flutter_news/widgets/article_card.dart';
import 'package:mipt_flutter_news/widgets/list_button.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  void openThemeDialog(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    showModalBottomSheet(
        showDragHandle: true,
        backgroundColor: themeColors.contentBackground,
        context: context,
        builder: (BuildContext context) {
          return Consumer<ThemeController>(builder: (contex, theme, child) {
            return ListView(
                padding: const EdgeInsets.only(
                    bottom: 24.0, left: 12.0, right: 12.0),
                shrinkWrap: true,
                children: [
                  ListButton(
                      label: "Light",
                      onTap: () {
                        theme.useLight();
                        Navigator.pop(context);
                      }),
                  ListButton(
                      label: "Dark",
                      onTap: () {
                        theme.useDark();
                        Navigator.pop(context);
                      }),
                  ListButton(
                      label: "System",
                      onTap: () {
                        theme.useSystem();
                        Navigator.pop(context);
                      })
                ]);
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Container(
        padding: const EdgeInsets.only(
            left: 24.0, right: 24.0, top: 8.0, bottom: 40.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("News",
              style: TextStyle(
                  color: themeColors.foreground,
                  fontSize: 48.0,
                  fontWeight: FontWeight.w600)),
          IconButton(
            onPressed: () => openThemeDialog(context),
            icon: const Icon(Icons.palette),
            iconSize: 24.0,
            color: themeColors.foreground,
          )
        ]));
  }
}

class NewsLine extends StatelessWidget {
  const NewsLine({super.key, required this.news});

  final List<ArticleModel> news;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    List<Widget> children = [];
    for (final (index, article) in news.indexed) {
      if (index != 0) {
        children.add(Divider(
          height: 1.0,
          color: themeColors.dividerForeground,
        ));
      }
      children.add(ArticleCard(
          article: article,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ArticleScreen(article: article),
              ),
            );
          }));
    }
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 100.0),
        child: Container(
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: themeColors.contentBackground,
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: Column(children: children)));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool loading = false;
  List<ArticleModel> news = [];

  Future<void> loadNews() async {
    setState(() {
      loading = true;
    });

    List<ArticleModel> newNews = await fetchNews();
    setState(() {
      news = newNews;
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadNews();
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Scaffold(
        backgroundColor: themeColors.background,
        body: Center(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                constraints: const BoxConstraints(maxWidth: 800.0),
                child: RefreshIndicator(
                    displacement: 64.0,
                    color: themeColors.loadingForeground,
                    backgroundColor: themeColors.loadingBackground,
                    onRefresh: loadNews,
                    child: ListView(children: <Widget>[
                      const Header(),
                      NewsLine(news: news),
                    ])))));
  }
}
