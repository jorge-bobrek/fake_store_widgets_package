import 'package:flutter/material.dart';
import '../templates/profile_page_template_widget.dart';

class ProfileListPage extends StatelessWidget {
  const ProfileListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profiles = [
      {'name': 'John Doe', 'email': 'john@example.com'},
      {'name': 'Jane Smith', 'email': 'jane@example.com'},
    ];

    return ProfilePageTemplateWidget(title: 'Profile List', profiles: profiles);
  }
}
