import 'package:flutter/material.dart';

/// A customizable icon button widget.
class IconButtonWidget extends StatelessWidget {
  /// Creates an [IconButtonWidget].
  ///
  /// The [icon] and [onPressed] parameters must not be null.
  const IconButtonWidget({super.key, required this.icon, required this.onPressed, this.color});

  /// The icon to display in the button.
  final IconData icon;
  /// The callback that is called when the button is tapped.
  final VoidCallback onPressed;
  /// The color of the icon
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      onPressed: onPressed,
    );
  }
}
