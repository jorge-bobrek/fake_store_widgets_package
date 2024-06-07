import 'package:flutter/material.dart';
import 'package:atomic_design/atomic_design.dart';

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

class PagesTabPage extends StatelessWidget {
  const PagesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pages'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login Page'),
              Tab(text: 'Profile List Page'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginPage(),
            ProfileListPage(),
          ],
        ),
      ),
    );
  }
}

// Individual pages for each level
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
          ],
        ),
      ),
    );
  }
}

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

class OrganismsPage extends StatelessWidget {
  const OrganismsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organisms')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LoginFormWidget(
              onLogin: (String email, String password) {
                // Controlar inicio de sesión
              },
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: ProfileListWidget(
                profiles: [
                  {'name': 'John Doe', 'email': 'john@example.com'},
                  {'name': 'Jane Smith', 'email': 'jane@example.com'},
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PagesTab extends StatelessWidget {
  const PagesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Login Page'),
                Tab(text: 'Profile List Page'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  LoginPage(),
                  ProfileListPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
