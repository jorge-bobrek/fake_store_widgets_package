import 'package:fake_store_widgets_package/data/models/profile_model.dart';
import 'package:fake_store_widgets_package/presentation/organisms/profile_list_widget.dart';
import 'package:flutter/material.dart';

/// A template that displays a list of profiles.
class ProfilePageTemplate extends StatelessWidget {
  /// Creates a [ProfilePageTemplate].
  ///
  /// The [title] and [profiles] parameters must not be null.
  const ProfilePageTemplate({
    super.key,
    required this.title,
    required this.profiles,
  });

  /// The title to be displayed in the AppBar.
  final String title;
  /// The list of profiles to display.
  final List<ProfileModel> profiles;

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
