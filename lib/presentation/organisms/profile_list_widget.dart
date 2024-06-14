import 'package:flutter/material.dart';
import '../molecules/profile_card_widget.dart';

/// A widget that displays a list of profile cards.
class ProfileListWidget extends StatelessWidget {
  /// Creates a [ProfileListWidget].
  ///
  /// The [profiles] parameter must not be null.
  const ProfileListWidget({super.key, required this.profiles});

  /// The list of profiles to display.
  final List<Profile> profiles;

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

/// A model class representing a profile.
class Profile {
  /// Creates a [Profile].
  ///
  /// The [name] and [email] parameters must not be null.
  const Profile({
    required this.name,
    required this.email,
  });

  /// The name of the profile.
  final String name;

  /// The email of the profile.
  final String email;
}