import 'package:fake_store_widgets_package/data/models/profile_model.dart';
import 'package:fake_store_widgets_package/presentation/templates/profile_page_template.dart';
import 'package:flutter/material.dart';

/// A page that displays a list of profiles.
///
/// This page uses [ProfilePageTemplate] to render the content.
class ProfileListPage extends StatelessWidget {
  const ProfileListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfilePageTemplate(
      title: 'Lista de perfiles',
      profiles: [
        ProfileModel(
          name: 'John Cena',
          email: 'john.cena@ejemplo.com',
        ),
        ProfileModel(
          name: 'Will Smith',
          email: 'will.smith@ejemplo.com',
        ),
      ],
    );
  }
}
