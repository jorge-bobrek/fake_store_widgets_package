import 'package:flutter/material.dart';

/// A widget that displays a label.
class LabelWidget extends StatelessWidget {
  /// Creates a [LabelWidget].
  ///
  /// The [text] parameter must not be null.
  const LabelWidget({
    super.key,
    required this.text,
  });

  /// The text to display as the label.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
