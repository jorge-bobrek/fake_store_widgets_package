
import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atoms')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(label: 'Click Me', onPressed: () {}),
            const SizedBox(height: 16),
            const LabelWidget(text: 'This is a label'),
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
