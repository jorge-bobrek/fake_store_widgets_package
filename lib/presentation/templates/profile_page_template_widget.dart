import 'package:flutter/material.dart';
import '../organisms/profile_list_widget.dart';

/// Widget que representa una plantilla para una página que muestra una lista de perfiles.
///
/// Proporciona una estructura básica para mostrar una lista de perfiles de usuario.
class ProfilePageTemplateWidget extends StatelessWidget {
  const ProfilePageTemplateWidget({
    super.key,
    required this.title,
    required this.profiles,
  });

  /// El título que se mostrará en el AppBar.
  final String title;
  /// Una lista de perfiles, donde cada perfil es un mapa con claves 'name' y 'email'.
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
