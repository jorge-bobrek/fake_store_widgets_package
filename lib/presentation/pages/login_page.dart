import 'package:fake_store_widgets_package/presentation/templates/login_template.dart';
import 'package:flutter/material.dart';

/// A page that displays the login form.
///
/// This page uses [LoginTemplate] to render the content.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      title: 'Iniciar Sesión',
      onLogin: (email, password) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Iniciaste sesión como: $email')),
        );
      },
    );
  }
}
