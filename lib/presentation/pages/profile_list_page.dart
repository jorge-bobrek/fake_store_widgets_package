import 'package:atomic_design/presentation/organisms/profile_list_widget.dart';
import 'package:flutter/material.dart';
import '../templates/profile_page_template.dart';

/// A page that displays a list of profiles.
///
/// This page uses [ProfilePageTemplate] to render the content.
class ProfileListPage extends StatelessWidget {
  const ProfileListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfilePageTemplate(
      title: 'Profile List',
      profiles: [
        Profile(
          name: 'John Doe',
          email: 'john.doe@example.com',
        ),
        Profile(
          name: 'Jane Smith',
          email: 'jane.smith@example.com',
        ),
      ],
    );
  }
}
