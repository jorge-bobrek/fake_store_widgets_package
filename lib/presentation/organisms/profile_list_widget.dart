import 'package:fake_store_widgets_package/data/models/profile_model.dart';
import 'package:fake_store_widgets_package/presentation/molecules/profile_card_widget.dart';
import 'package:flutter/material.dart';

/// A widget that displays a list of profile cards.
class ProfileListWidget extends StatelessWidget {
  /// Creates a [ProfileListWidget].
  ///
  /// The [profiles] parameter must not be null.
  const ProfileListWidget({super.key, required this.profiles});

  /// The list of profiles to display.
  final List<ProfileModel> profiles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        final profile = profiles[index];
        return ProfileCardWidget(
          name: profile.name,
          email: profile.email,
        );
      },
    );
  }
}