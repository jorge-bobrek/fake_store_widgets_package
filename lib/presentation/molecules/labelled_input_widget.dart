import 'package:flutter/material.dart';

/// A widget that combines a label and a text input field.
class LabelledInputWidget extends StatelessWidget {
  /// Creates a [LabelledInputWidget].
  ///
  /// The [label] and [controller] parameters must not be null.
  const LabelledInputWidget({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  /// The text to display as the label.
  final String label;
  /// The controller for the text input field.
  final TextEditingController controller;
  /// Whether the text should be hidden (for example, for passwords).
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
