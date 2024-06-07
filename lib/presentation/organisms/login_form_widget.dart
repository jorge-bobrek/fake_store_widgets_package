import 'package:atomic_design/presentation/atoms/button_widget.dart';
import 'package:atomic_design/presentation/molecules/labelled_input_widget.dart';
import 'package:flutter/material.dart';

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
        LabelledInputWidget(label: 'Password', controller: passwordController),
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
