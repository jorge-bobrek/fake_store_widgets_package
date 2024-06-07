import 'package:flutter/material.dart';
import '../molecules/profile_card_widget.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key, required this.profiles});

  final List<Map<String, String>> profiles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        final profile = profiles[index];
        return ProfileCardWidget(
            name: profile['name']!, email: profile['email']!);
      },
    );
  }
}
