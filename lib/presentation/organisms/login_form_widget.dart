import 'package:atomic_design/presentation/atoms/button_widget.dart';
import 'package:atomic_design/presentation/molecules/labelled_input_widget.dart';
import 'package:flutter/material.dart';

/// Widget que representa un formulario de inicio de sesión.
///
/// Contiene campos para email y contraseña.
class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({super.key, required this.onLogin});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final void Function(String email, String password) onLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelledInputWidget(label: 'Email', controller: emailController),
        const SizedBox(height: 20),
        LabelledInputWidget(
            label: 'Password',
            controller: passwordController,
            obscureText: true),
        const SizedBox(height: 20),
        ButtonWidget(
            label: 'Login',
            onPressed: () {
              onLogin(emailController.text, passwordController.text);
            }),
      ],
    );
  }
}
