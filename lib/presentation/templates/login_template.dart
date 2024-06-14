import 'package:flutter/material.dart';
import '../organisms/login_form_widget.dart';

/// A template that displays a login form.
///
/// Provides a basic structure for a login page.
/// Contains a login form with fields for email and password.
class LoginTemplate extends StatelessWidget {
  /// Creates a [LoginTemplate].
  ///
  /// The [title] and [onLogin] parameters must not be null.
  const LoginTemplate({
    super.key,
    required this.title,
    required this.onLogin,
  });

  /// The title to be displayed in the AppBar.
  final String title;

  /// The callback that is called when the login button is tapped.
  /// Receives the email and password as parameters.
  final void Function(String email, String password) onLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginFormWidget(
          onLogin: (email, password) {
            onLogin(email, password);
          },
        ),
      ),
    );
  }
}
