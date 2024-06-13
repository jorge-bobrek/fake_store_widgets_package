import 'package:flutter/material.dart';
import 'package:atomic_design/atomic_design.dart';

class PagesTabPage extends StatelessWidget {
  const PagesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pages'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login Page'),
              Tab(text: 'Profile List Page'),
              Tab(text: 'Icon Page'),
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