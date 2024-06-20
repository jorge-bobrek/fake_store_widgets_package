import 'package:flutter/material.dart';

/// A template for authentication pages providing a common layout.
class AuthTemplate extends StatelessWidget {
  final String title;
  final Widget form;

  const AuthTemplate({
    super.key,
    required this.title,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: form,
        ),
      ),
    );
  }
}
