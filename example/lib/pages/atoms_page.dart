
import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Átomos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// An example of [ButtonWidget].
            ButtonWidget(
              label: 'Clickéame',
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Botón presionado')),
              ),
            ),
            const SizedBox(height: 16),

            /// An example of [LabelWidget].
            const LabelWidget(text: 'Esto es un label', size: 16),
            const SizedBox(height: 8),

            /// An example of [IconButtonWidget].
            IconButtonWidget(
              icon: Icons.info,
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Ícono presionado')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
