import 'package:flutter/material.dart';
import 'package:example/pages/atoms_page.dart';
import 'package:example/pages/molecules_page.dart';
import 'package:example/pages/organisms_page.dart';
import 'package:example/pages/templates_tab_page.dart';
import 'package:example/pages/pages_tab_page.dart';

void main() {
  runApp(const Showcase());
}

class Showcase extends StatelessWidget {
  const Showcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atomic Design Showcase',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      routes: {
        '/atoms': (context) => const AtomsPage(),
        '/molecules': (context) => const MoleculesPage(),
        '/organisms': (context) => const OrganismsPage(),
        '/templates': (context) => const TemplatesTabPage(),
        '/pages': (context) => const PagesTabPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atomic Design Showcase')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Atoms'),
            onTap: () {
              Navigator.pushNamed(context, '/atoms');
            },
          ),
          ListTile(
            title: const Text('Molecules'),
            onTap: () {
              Navigator.pushNamed(context, '/molecules');
            },
          ),
          ListTile(
            title: const Text('Organisms'),
            onTap: () {
              Navigator.pushNamed(context, '/organisms');
            },
          ),
          ListTile(
            title: const Text('Templates'),
            onTap: () {
              Navigator.pushNamed(context, '/templates');
            },
          ),
          ListTile(
            title: const Text('Pages'),
            onTap: () {
              Navigator.pushNamed(context, '/pages');
            },
          ),
        ],
      ),
    );
  }
}
