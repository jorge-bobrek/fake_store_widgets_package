import 'package:flutter/material.dart';

/// A model class representing an item with a title, subtitle, icon, and callback.
class IconItemModel {
  /// The title of the item.
  final String title;

  /// The subtitle of the item.
  final String subtitle;

  /// The icon to display in the item.
  final IconData icon;

  /// The callback that is called when the icon button is tapped.
  final VoidCallback onPressed;

  /// Creates an [IconItemModel].
  ///
  /// The [title], [subtitle], [icon], and [onPressed] parameters must not be null.
  IconItemModel(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.onPressed});
}
