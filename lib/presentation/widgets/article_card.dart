import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mipt_flutter_news/domain/model/article.dart';
import 'package:mipt_flutter_news/domain/state/favorite.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';

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

  final Article article;
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
        padding: const EdgeInsets.only(bottom: 0.0),
        child: Text(article.title,
            style: TextStyle(
                color: themeColors.contentForeground,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                height: 1.2))));
    children.add(SizedBox(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ArticleSource(name: article.sourceName, url: article.sourceUrl),
          BlocBuilder<FavoriteNewsCubit, FavoriteNewsResource>(
            builder: (context, resource) {
              var favorite =
                  resource.data?.newsId.contains(article.id) ?? false;
              return IconButton(
                  icon: favorite
                      ? const Icon(Icons.star)
                      : const Icon(Icons.star_outline),
                  onPressed: () {
                    favorite
                        ? context.read<FavoriteNewsCubit>().dislike(article)
                        : context.read<FavoriteNewsCubit>().like(article);
                  });
            },
          ),
        ])));

    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
        child: Material(
            color: themeColors.contentBackground,
            child: InkWell(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                    child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: children))))));
  }
}
