import 'package:atomic_design/presentation/atoms/label_widget.dart';
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.name,
    required this.email,
  });

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelWidget(text: name),
            const SizedBox(height: 8),
            Text(email),
          ],
        ),
      ),
    );
  }
}
