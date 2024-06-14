// lib/src/pages/login_page.dart
import 'package:flutter/material.dart';
import '../templates/login_template.dart';

/// A page that displays the login form.
///
/// This page uses [LoginTemplate] to render the content.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      title: 'Login Page',
      onLogin: (email, password) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Logged in as $email')),
        );
      },
    );
  }
}
