import 'package:flutter/material.dart';

/// Widget que combina una etiqueta con un campo de entrada de texto.
///
/// Se utiliza para mostrar un campo de entrada de texto con una etiqueta asociada.
class LabelledInputWidget extends StatelessWidget {
  const LabelledInputWidget({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  /// El texto de la etiqueta.
  final String label;
  /// El controlador del campo de texto.
  final TextEditingController controller;
  /// Si el texto debe estar oculto (por ejemplo, para contraseñas).

  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
