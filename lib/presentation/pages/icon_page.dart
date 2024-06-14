import 'package:fake_store_widgets_package/data/models/icon_item_model.dart';
import 'package:fake_store_widgets_package/presentation/templates/icon_template.dart';
import 'package:flutter/material.dart';

/// A page that displays a list of icons with labels and actions.
///
/// This page uses [IconTemplate] to render the content.
class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconTemplate(
      title: 'Íconos',
      items: [
        IconItemModel(
          title: 'Inicio',
          subtitle: 'Ir a la página principal',
          label: 'Página Principal',
          icon: Icons.home,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Botón Inicio presionado')));
          },
        ),
        IconItemModel(
          title: 'Ajustes',
          subtitle: 'Ir a la configuración',
          label: 'Configuración',
          icon: Icons.settings,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Botón Ajustes presionado')));
          },
        ),
      ],
    );
  }
}
