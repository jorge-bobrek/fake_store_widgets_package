import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class OrganismsPage extends StatelessWidget {
  const OrganismsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organismos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LoginFormWidget(
              onLogin: (String email, String password) {},
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: ProfileListWidget(
                profiles: [
                  {'name': 'John Cena', 'email': 'john@ejemplo.com'},
                  {'name': 'Will Smith', 'email': 'will@ejemplo.com'},
                ],
              ),
            ),
            const SizedBox(height: 16),
            CardWithIconWidget(
              title: "Título",
              subtitle: "Subtítulo",
              icon: Icons.abc,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
