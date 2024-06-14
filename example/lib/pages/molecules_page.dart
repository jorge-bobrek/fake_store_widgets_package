import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moléculas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LabelledInputWidget(
                label: 'Nombre de usuario', controller: TextEditingController()),
            const SizedBox(height: 16),
            const ProfileCardWidget(
                name: 'John Cena', email: 'john.cena@ejemplo.com'),
                LabelledIconWidget(label: "Ejemplo", icon: Icons.abc, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
