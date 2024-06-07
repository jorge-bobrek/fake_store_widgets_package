import 'package:flutter/material.dart';
import '../templates/profile_page_template_widget.dart';

/// Página que muestra una lista de perfiles de usuario.
///
/// Esta página hace uso de [ProfilePageTemplateWidget].
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
