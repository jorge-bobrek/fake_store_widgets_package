import 'package:atomic_design/presentation/organisms/card_with_icon_widget.dart';
import 'package:flutter/material.dart';

/// A template that displays a list of [CardWithIconWidget] items.
class IconTemplate extends StatelessWidget {
  /// The title of the template, displayed in the app bar.
  final String title;
  /// The list of items to display.
  final List<IconItem> items;

  /// Creates an [IconTemplate].
  ///
  /// The [title] and [items] parameters must not be null.
  const IconTemplate({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CardWithIconWidget(
              title: item.title,
              subtitle: item.subtitle,
              icon: item.icon,
              onPressed: item.onPressed,
            );
          },
        ),
      ),
    );
  }
}

/// A model class representing an item with a title, subtitle, icon, and callback.
class IconItem {
  /// The title of the item.
  final String title;
  /// The subtitle of the item.
  final String subtitle;
  /// The icon to display in the item.
  final IconData icon;
  /// The callback that is called when the icon button is tapped.
  final VoidCallback onPressed;

  /// Creates an [IconItem].
  ///
  /// The [title], [subtitle], [icon], and [onPressed] parameters must not be null.
  IconItem({required this.title, required this.subtitle, required this.icon, required this.onPressed});
}
