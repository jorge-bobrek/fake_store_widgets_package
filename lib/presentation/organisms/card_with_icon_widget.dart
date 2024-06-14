import 'package:atomic_design/presentation/molecules/labelled_icon_widget.dart';
import 'package:flutter/material.dart';

/// A card widget that displays a title, subtitle, and an icon button.
///
/// The icon button is created using [LabelledIconWidget].
class CardWithIconWidget extends StatelessWidget {
  /// Creates a [CardWithIconWidget].
  ///
  /// The [title], [subtitle], [icon], and [onPressed] parameters must not be null.
  const CardWithIconWidget({super.key, required this.title, required this.subtitle, required this.icon, required this.onPressed});
  
  /// The title of the card.
  final String title;
  /// The subtitle of the card.
  final String subtitle;
  /// The icon to display in the button.
  final IconData icon;
  /// The callback that is called when the button is tapped.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
          LabelledIconWidget(label: title, icon: icon, onPressed: onPressed),
        ],
      ),
    );
  }
}
