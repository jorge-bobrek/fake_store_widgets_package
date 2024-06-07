import 'package:flutter/material.dart';
import '../organisms/profile_list_widget.dart';

class ProfilePageTemplateWidget extends StatelessWidget {
  const ProfilePageTemplateWidget({
    super.key,
    required this.title,
    required this.profiles,
  });

  final String title;
  final List<Map<String, String>> profiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProfileListWidget(profiles: profiles),
      ),
    );
  }
}
