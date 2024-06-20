import 'package:fake_store_widgets_package/presentation/atoms/label_widget.dart';
import 'package:fake_store_widgets_package/presentation/atoms/text_widget.dart';
import 'package:flutter/material.dart';

/// A widget to display user information.
class LabelInfoWidget extends StatelessWidget {
  final String label;
  final String info;

  const LabelInfoWidget({
    super.key,
    required this.label,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          LabelWidget(text: '$label: ', size: 16),
          const SizedBox(width: 8),
          TextWidget(text: info, size: 16),
        ],
      ),
    );
  }
}
