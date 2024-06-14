
import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

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
            ButtonWidget(label: 'Haz click', onPressed: () {}),
            const SizedBox(height: 16),
            const LabelWidget(text: 'Esto es un label'),
            IconButtonWidget(
              icon: Icons.abc,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
