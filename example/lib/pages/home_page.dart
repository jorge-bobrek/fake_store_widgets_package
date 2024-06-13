
import 'package:flutter/material.dart';

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
