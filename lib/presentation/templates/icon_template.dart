import 'package:fake_store_widgets_package/data/models/icon_item_model.dart';
import 'package:fake_store_widgets_package/presentation/organisms/card_with_icon_widget.dart';
import 'package:flutter/material.dart';

/// A template that displays a list of [CardWithIconWidget] items.
class IconTemplate extends StatelessWidget {
  /// The title of the template, displayed in the app bar.
  final String title;
  /// The list of items to display.
  final List<IconItemModel> items;

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
