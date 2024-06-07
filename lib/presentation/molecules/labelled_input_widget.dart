import 'package:flutter/material.dart';

class LabelledInputWidget extends StatelessWidget {
  const LabelledInputWidget({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(controller: controller),
      ],
    );
  }
}
