import 'package:flutter/material.dart';
import '../molecules/profile_card_widget.dart';

/// Widget que muestra una lista de perfiles de usuarios.
///
/// Se utiliza para mostrar una lista de perfiles de usuario.
class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key, required this.profiles});

  /// Una lista de perfiles, donde cada perfil es un mapa con claves 'name' y 'email'.
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
