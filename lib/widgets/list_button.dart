import 'package:flutter/material.dart';
import 'package:mipt_flutter_news/themes/themes.dart';

class ListButton extends StatelessWidget {
  const ListButton({required this.label, this.onTap, super.key});

  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onTap,
            child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 16.0),
                child: Text(label,
                    style: TextStyle(
                        color: themeColors.contentForeground,
                        fontSize: 16.0)))));
  }
}
