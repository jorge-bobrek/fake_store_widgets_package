import 'package:atomic_design/presentation/atoms/icon_button_widget.dart';
import 'package:atomic_design/presentation/atoms/label_widget.dart';
import 'package:flutter/material.dart';

class LabelledIconWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const LabelledIconWidget({super.key, required this.label, required this.icon, required this.onPressed});

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
