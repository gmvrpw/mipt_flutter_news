import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/favorite.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:mipt_flutter_news/presentation/widgets/article_card.dart';
import 'package:mipt_flutter_news/presentation/widgets/favorite_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({required this.article, super.key});

  final Article article;

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(article.sourceUrl))) {
      throw Exception('Could not launch ${article.sourceUrl}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;
    List<Widget> children = [];
    children.add(Container(
        margin: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
        child:
            ArticleSource(name: article.sourceName, url: article.sourceUrl)));
    children.add(Container(
        margin: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 8.0),
        child: Text(
          article.title,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: themeColors.contentForeground,
              fontSize: 40.0,
              height: 1.0,
              fontWeight: FontWeight.w600),
        )));
    if (article.urlToImage != null) {
      children.add(Container(
          margin: const EdgeInsets.symmetric(vertical: 24.0),
          child: Hero(
              tag: article.urlToImage!,
              child: CachedNetworkImage(
                imageUrl: article.urlToImage!,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Container(color: themeColors.imagePlaceholderColor),
              ))));
    }
    children.add(Container(
        padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
        child: Text(article.description ?? "",
            style: TextStyle(
                color: themeColors.contentForeground,
                fontSize: 18.0,
                height: 1.2))));

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(article.title,
              style: const TextStyle(fontWeight: FontWeight.w600)),
          actions: [
            BlocBuilder<FavoriteNewsCubit, FavoriteNewsResource>(
              builder: (context, resource) {
                var favorite =
                    resource.data?.newsId.contains(article.id) ?? false;
                return FavoriteButton(
                    favorite: favorite,
                    size: 28.0,
                    onPressed: () {
                      favorite
                          ? context.read<FavoriteNewsCubit>().dislike(article)
                          : context.read<FavoriteNewsCubit>().like(article);
                    });
              },
            ),
          ],
          backgroundColor: themeColors.contentBackground,
          foregroundColor: themeColors.contentForeground,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start, children: children),
        backgroundColor: themeColors.contentBackground,
        floatingActionButton: FloatingActionButton.extended(
            label: Row(children: [
              const Icon(Icons.travel_explore),
              Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: const Text("Open in Browser",
                      style: TextStyle(fontSize: 18.0)))
            ]),
            onPressed: _launchUrl),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
