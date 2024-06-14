import 'package:fake_store_widgets_package/presentation/atoms/icon_button_widget.dart';
import 'package:fake_store_widgets_package/presentation/atoms/label_widget.dart';
import 'package:flutter/material.dart';

/// A widget that combines a label and an icon button.
class LabelledIconWidget extends StatelessWidget {
  /// Creates a [LabelledIconWidget].
  ///
  /// The [label], [icon], and [onPressed] parameters must not be null.
  const LabelledIconWidget({super.key, required this.label, required this.icon, required this.onPressed});

  /// The text label to display next to the icon.
  final String label;
  /// The icon to display in the button.
  final IconData icon;
  /// The callback that is called when the button is tapped.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(icon: icon, onPressed: onPressed),
        const SizedBox(width: 8),
        LabelWidget(text: label),
      ],
    );
  }
}
