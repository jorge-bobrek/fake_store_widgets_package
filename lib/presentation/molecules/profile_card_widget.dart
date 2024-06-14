import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/presentation/atoms/label_widget.dart';

/// A card widget that displays a profile picture, name, and email.
class ProfileCardWidget extends StatelessWidget {
  /// Creates a [ProfileCardWidget].
  ///
  /// The [name] and [email] parameters must not be null.
  const ProfileCardWidget({
    super.key,
    required this.name,
    required this.email,
  });

  /// The name of the profile.
  final String name;
  /// The email of the profile.
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
