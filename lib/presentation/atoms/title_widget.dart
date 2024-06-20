import 'package:flutter/material.dart';

/// A widget that displays a label.
class TitleWidget extends StatelessWidget {
  /// Creates a [TitleWidget].
  ///
  /// The [text] parameter must not be null.
  const TitleWidget({
    super.key,
    required this.text,
    required this.size,
  });

  /// The text to display as the label.
  final String? text;

  /// The size of the label.
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
