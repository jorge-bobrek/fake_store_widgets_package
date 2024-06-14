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
            /// An example of [LabelledInputWidget].
            LabelledInputWidget(
                label: 'Nombre de usuario', controller: TextEditingController()),
            const SizedBox(height: 16),

            /// An example of [ProfileCardWidget].
            const ProfileCardWidget(
                name: 'John Cena', email: 'john.cena@ejemplo.com'),
            const SizedBox(height: 16),

            /// An example of [LabelledIconWidget].
            LabelledIconWidget(
              label: 'Ejemplo',
              icon: Icons.info,
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Ícono presionado')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
