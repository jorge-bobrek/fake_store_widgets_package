import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';
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
            /// An example of [LoginFormWidget].
            //LoginFormWidget(
            //  onLogin: (String email, String password) {
            //    ScaffoldMessenger.of(context).showSnackBar(
            //      SnackBar(
            //          duration: const Duration(seconds: 1),
            //          content: Text('Iniciaste sesión como $email')),
            //    );
            //  },
            //),
            const SizedBox(height: 16),

            /// An example of [CardWithIconWidget].
            CardWithIconWidget(
              title: 'Título',
              subtitle: 'Subtítulo',
              label: 'Ícono',
              icon: Icons.info,
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Ícono presionado')),
              ),
            ),
            const SizedBox(height: 16),

            /// An example of [ProfileListWidget].
            const Expanded(
              child: ProfileListWidget(
                profiles: [
                  ProfileModel(
                    name: 'John Cena',
                    email: 'john.cena@ejemplo.com',
                  ),
                  ProfileModel(
                    name: 'Will Smith',
                    email: 'will.smith@ejemplo.com',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
          ],
        ),
      ),
    );
  }
}
