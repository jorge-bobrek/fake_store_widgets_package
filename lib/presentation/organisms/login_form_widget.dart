import 'package:fake_store_widgets_package/presentation/atoms/button_widget.dart';
import 'package:fake_store_widgets_package/presentation/molecules/labelled_input_widget.dart';
import 'package:flutter/material.dart';

/// A widget that displays a login form.
class LoginFormWidget extends StatelessWidget {
  /// Creates a [LoginFormWidget].
  ///
  /// The [onLogin] parameter must not be null.
  LoginFormWidget({super.key, required this.onLogin});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  /// The callback that is called when the login button is tapped.
  final void Function(String email, String password) onLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelledInputWidget(label: 'Correo', controller: emailController),
        const SizedBox(height: 20),
        LabelledInputWidget(
            label: 'Contraseña',
            controller: passwordController,
            obscureText: true),
        const SizedBox(height: 20),
        ButtonWidget(
            label: 'Iniciar Sesión',
            onPressed: () {
              onLogin(emailController.text, passwordController.text);
            }),
      ],
    );
  }
}
