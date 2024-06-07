import 'package:flutter/material.dart';
import '../organisms/login_form_widget.dart';

/// Widget que representa una plantilla para la página de inicio de sesión.
///
/// Proporciona una estructura básica para una página de inicio de sesión.
/// Contiene un formulario de inicio de sesión con campos para email y contraseña.
class LoginTemplateWidget extends StatelessWidget {
  const LoginTemplateWidget({
    super.key,
    required this.title,
    required this.onLogin,
  });

  /// El título que se mostrará en el AppBar.
  final String title;
  /// La función que se ejecutará cuando se presione el botón de inicio de sesión.
  /// Recibe el email y la contraseña como parámetros.
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
