import 'package:fake_store_widgets_package/presentation/atoms/button_widget.dart';
import 'package:fake_store_widgets_package/presentation/molecules/labelled_input_widget.dart';
import 'package:flutter/material.dart';

/// The registration form widget.
class RegisterFormWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController documentController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final VoidCallback onRegister;

  const RegisterFormWidget({
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
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LabelledInputWidget(
              controller: widget.firstNameController,
              label: 'Nombre',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su nombre';
                }
                return null;
              },
            ),
            LabelledInputWidget(
              controller: widget.lastNameController,
              label: 'Apellido',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su apellido';
                }
                return null;
              },
            ),
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
              controller: widget.documentController,
              label: 'Documento',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su documento';
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
                  return 'Por favor ingrese una contraseña';
                }
                return null;
              },
            ),
            LabelledInputWidget(
              controller: widget.confirmPasswordController,
              label: 'Confirmar Contraseña',
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor confirme su contraseña';
                }
                if (value != widget.passwordController.text) {
                  return 'Las contraseñas no coinciden';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              label: 'Registrar',
              onPressed: widget.onRegister,
            ),
          ],
        ),
      ),
    );
  }
}
