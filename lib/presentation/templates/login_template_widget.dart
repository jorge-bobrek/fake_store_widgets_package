import 'package:flutter/material.dart';
import '../organisms/login_form_widget.dart';

class LoginTemplateWidget extends StatelessWidget {
  const LoginTemplateWidget({
    super.key,
    required this.title,
    required this.onLogin,
  });

  final String title;
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
