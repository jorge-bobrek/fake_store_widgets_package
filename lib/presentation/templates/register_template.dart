import 'package:fake_store_widgets_package/presentation/organisms/register_form_widget.dart';
import 'package:fake_store_widgets_package/presentation/templates/auth_template.dart';
import 'package:flutter/material.dart';

/// A template for the registration page.
class RegisterTemplate extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController documentController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final VoidCallback onRegister;

  const RegisterTemplate({
    super.key,
    required this.formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.documentController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      title: 'Registro',
      form: RegisterFormWidget(
        formKey: formKey,
        firstNameController: firstNameController,
        lastNameController: lastNameController,
        emailController: emailController,
        documentController: documentController,
        passwordController: passwordController,
        confirmPasswordController: confirmPasswordController,
        onRegister: onRegister,
      ),
    );
  }
}
