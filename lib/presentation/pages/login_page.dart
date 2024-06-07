// lib/src/pages/login_page.dart
import 'package:flutter/material.dart';
import '../templates/login_template_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplateWidget(
      title: 'Login Page',
      onLogin: (email, password) {
        // Controlar inicio de sesión
      },
    );
  }
}
