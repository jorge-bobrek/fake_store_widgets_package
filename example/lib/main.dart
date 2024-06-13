import 'package:flutter/material.dart';
import 'package:example/pages/home_page.dart';
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
