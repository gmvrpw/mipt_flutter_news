import 'package:flutter/material.dart';
import 'package:mipt_flutter_news/presentation/themes/themes.dart';
import 'package:mipt_flutter_news/presentation/widgets/list_button.dart';

class SearchOptionItem extends StatelessWidget {
  const SearchOptionItem(
      {super.key, required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListButton(label: label, onTap: onPressed);
  }
}

class SearchOption extends StatelessWidget {
  const SearchOption({super.key, required this.items, required this.label});

  final String label;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColors>()!;

    return ActionChip(
      elevation: 0,
      shape: const StadiumBorder(
        side: BorderSide(style: BorderStyle.none),
      ),
      avatar: const Icon(Icons.public),
      label: Text(label, style: const TextStyle(fontSize: 12.0)),
      backgroundColor: themeColors.background,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            showDragHandle: true,
            useSafeArea: false,
            builder: (_) {
              return ListView(
                  padding: const EdgeInsets.only(
                      bottom: 24.0, left: 12.0, right: 12.0),
                  shrinkWrap: true,
                  children: items);
            });
      },
    );
  }
}
