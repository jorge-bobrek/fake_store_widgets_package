import 'package:atomic_design/presentation/organisms/card_with_icon_widget.dart';
import 'package:flutter/material.dart';

class IconTemplate extends StatelessWidget {
  final String title;
  final List<IconItem> items;

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

class IconItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onPressed;

  IconItem({required this.title, required this.subtitle, required this.icon, required this.onPressed});
}
