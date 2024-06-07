import 'package:flutter/material.dart';
import 'package:atomic_design/atomic_design.dart';

class TemplatesTabPage extends StatelessWidget {
  const TemplatesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Templates'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login Template'),
              Tab(text: 'Profile List Template'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginTemplateWidget(
              title: 'Login Example',
              onLogin: (String email, String password) {
                // Controlar inicio de sesión
              },
            ),
            const ProfilePageTemplateWidget(
              title: 'Profiles Example',
              profiles: [
                {'name': 'Example Name 1', 'email': 'email@example.com'},
                {'name': 'Example Name 2', 'email': 'email@example.com'},
              ],
            )
          ],
        ),
      ),
    );
  }
}
