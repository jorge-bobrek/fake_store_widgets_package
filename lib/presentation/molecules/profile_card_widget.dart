import 'package:atomic_design/presentation/atoms/label_widget.dart';
import 'package:flutter/material.dart';

/// Widget que muestra la información del perfil de un usuario en forma de tarjeta.
///
/// Se utiliza para mostrar información básica del perfil de un usuario.
class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.name,
    required this.email,
  });

  /// El nombre del usuario.
  final String name;
  /// El correo electrónico del usuario.
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelWidget(text: name),
            const SizedBox(height: 8),
            Text(email),
          ],
        ),
      ),
    );
  }
}
