import 'package:flutter/material.dart';

/// A widget that displays a text with a specific size.
class TextWidget extends StatelessWidget {
  /// Creates a [TextWidget].
  ///
  /// The [text] parameter must not be null.
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    this.color,
  });

  /// The text to display.
  final String? text;

  /// The size of the text.
  final double size;

  /// The color of the text.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
