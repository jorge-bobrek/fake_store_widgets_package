import 'package:flutter/material.dart';

/// A customizable button widget.
class ButtonWidget extends StatelessWidget {
  /// Creates a [ButtonWidget].
  ///
  /// The [label] and [onPressed] parameters must not be null.
  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  /// The text to display on the button.
  final String label;
  /// The callback that is called when the button is tapped.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
