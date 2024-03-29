import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mipt_flutter_news/models/article.dart';
import 'package:mipt_flutter_news/themes/themes.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Container(
        width: double.infinity,
        height: 240.0,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: themeColors.contentBackground,
            borderRadius: BorderRadius.circular(16.0)),
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              Container(color: themeColors.imagePlaceholderColor),
        ));
  }
}

class ArticleSource extends StatelessWidget {
  const ArticleSource({required this.name, required this.url, super.key});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Row(children: [
      Container(
          width: 18.0,
          height: 18.0,
          margin: const EdgeInsets.only(right: 8.0),
          child: Image.network(
              'https://cdn.sstatic.net/Sites/stackoverflow/Img/favicon.ico?v=ec617d715196',
              fit: BoxFit.fill)),
      Text(name,
          style: TextStyle(
              color: themeColors.contentForeground,
              fontWeight: FontWeight.w400,
              fontSize: 13.0))
    ]);
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({required this.article, this.onTap, super.key});

  final ArticleModel article;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    var children = <Widget>[];
    if (article.urlToImage != null) {
      children.add(Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: ArticleImage(url: article.urlToImage!)));
    }
    children.add(Container(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Text(article.title,
            style: TextStyle(
                color: themeColors.contentForeground,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                height: 1.2))));
    children.add(ArticleSource(name: article.source.name, url: article.url));

    return Material(
        color: themeColors.contentBackground,
        child: InkWell(
            onTap: onTap,
            child: Container(
                padding: const EdgeInsets.all(16.0),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: double.infinity),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children)))));
  }
}
