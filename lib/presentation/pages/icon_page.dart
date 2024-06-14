import 'package:atomic_design/presentation/templates/icon_template.dart';
import 'package:flutter/material.dart';

/// A page that displays a list of icons with labels and actions.
///
/// This page uses [IconTemplate] to render the content.
class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconTemplate(
      title: 'Icons Page',
      items: [
        IconItem(
          title: 'Home',
          subtitle: 'Go to home page',
          icon: Icons.home,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Home button pressed')));
          },
        ),
        IconItem(
          title: 'Settings',
          subtitle: 'Go to settings',
          icon: Icons.settings,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Settings button pressed')));
          },
        ),
      ],
    );
  }
}
