import 'package:fake_store_widgets_package/presentation/atoms/button_widget.dart';
import 'package:fake_store_widgets_package/presentation/molecules/labelled_input_widget.dart';
import 'package:flutter/material.dart';

/// The login form widget.
class LoginFormWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;

  const LoginFormWidget({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
  });

  @override
  State<LoginFormWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
        LabelledInputWidget(
            controller: widget.emailController,
            label: 'Correo',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su correo';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Por favor ingrese un correo válido';
              }
              return null;
            },
          ),
          LabelledInputWidget(
            controller: widget.passwordController,
            label: 'Contraseña',
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su contraseña';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ButtonWidget(
            label: 'Iniciar Sesión',
            onPressed: widget.onLogin,
          ),
        ],
      ),
    );
  }
}
