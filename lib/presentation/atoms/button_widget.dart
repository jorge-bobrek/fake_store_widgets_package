import 'package:flutter/material.dart';

/// Widget que representa un botón personalizado.
///
/// Puede ser utilizado en diferentes partes de la aplicación.
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  /// El texto que se mostrará en el botón.
  final String label;
  /// La función que se ejecutará cuando el botón sea presionado.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
