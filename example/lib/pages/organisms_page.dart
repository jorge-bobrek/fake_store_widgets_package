import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';

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
