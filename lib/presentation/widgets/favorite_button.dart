import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.favorite,
    required this.onPressed,
    this.size = 24.0,
  });

  final bool favorite;
  final double size;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
        duration: const Duration(milliseconds: 800),
        curve: Curves.elasticOut,
        turns: favorite ? 0.2 : 0,
        child: IconButton(
            icon: favorite
                ? Icon(Icons.star, size: size)
                : Icon(Icons.star_outline, size: size),
            padding: const EdgeInsets.all(2.0),
            splashRadius: size * 0.8,
            onPressed: onPressed));
  }
}
