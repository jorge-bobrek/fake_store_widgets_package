import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Molecules')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LabelledInputWidget(
                label: 'Username', controller: TextEditingController()),
            const SizedBox(height: 16),
            const ProfileCardWidget(
                name: 'John Doe', email: 'john@example.com'),
          ],
        ),
      ),
    );
  }
}
