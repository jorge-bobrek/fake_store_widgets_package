import 'package:flutter/material.dart';

/// Widget de texto simple que muestra una etiqueta.
///
/// Se utiliza para mostrar texto en diferentes partes de la aplicación.
class LabelWidget extends StatelessWidget {
  const LabelWidget({
    super.key,
    required this.text,
  });

  /// El texto que se mostrará en la etiqueta.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
