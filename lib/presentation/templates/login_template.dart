import 'package:fake_store_widgets_package/presentation/organisms/login_form_widget.dart';
import 'package:fake_store_widgets_package/presentation/templates/auth_template.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A template for the login page.
class LoginTemplate extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback onNavigation;
  final Widget? header;

  const LoginTemplate({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
    required this.onNavigation,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      title: 'Iniciar Sesión',
      form: SingleChildScrollView(
        child: Column(
          children: [
            if (header != null) header!,
            LoginFormWidget(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              onLogin: onLogin,
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: '¿No tienes cuenta? ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Regístrate',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()..onTap = onNavigation,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
