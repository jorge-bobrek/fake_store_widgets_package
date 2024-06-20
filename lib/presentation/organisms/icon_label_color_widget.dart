import 'package:fake_store_widgets_package/presentation/atoms/text_widget.dart';
import 'package:flutter/material.dart';

class IconLabelColorWidget extends StatelessWidget {
  const IconLabelColorWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.size,
      this.color});

  /// The icon to display in the button.
  final IconData icon;

  /// The text to display.
  final String text;

  /// The size of the text.
  final double size;

  /// The color of the text and icon.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 10),
        TextWidget(
          text: text,
          size: size,
          color: color,
        )
      ],
    );
  }
}
