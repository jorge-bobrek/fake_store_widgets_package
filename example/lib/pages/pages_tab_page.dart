import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';

class PagesTabPage extends StatelessWidget {
  const PagesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Páginas'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Página de inicio de sesión'),
              Tab(text: 'Página de lista de perfiles'),
              Tab(text: 'Página de íconos'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginPage(),
            ProfileListPage(),
            IconPage()
          ],
        ),
      ),
    );
  }
}