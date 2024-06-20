import 'package:flutter/material.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';

class TemplatesTabPage extends StatelessWidget {
  const TemplatesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plantillas'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Plantilla de inicio de sesión'),
              Tab(text: 'Plantilla de lista de perfiles'),
              Tab(text: 'Plantilla de íconos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /// An example of [LoginTemplate].
            //LoginTemplate(
            //  title: 'Ejemplo de Inicio de Sesión',
            //  onLogin: (String email, String password) {
            //    ScaffoldMessenger.of(context).showSnackBar(
            //      SnackBar(
            //          duration: const Duration(seconds: 1),
            //          content: Text('Iniciaste sesión como $email')),
            //    );
            //  },
            //),

            /// An example of [ProfilePageTemplate].
            const ProfilePageTemplate(
              title: 'Ejemplo de Lista de Perfiles',
              profiles: [
                ProfileModel(
                  name: 'John Cena',
                  email: 'john.cena@ejemplo.com',
                ),
                ProfileModel(
                  name: 'Will Smith',
                  email: 'will.smith@ejemplo.com',
                ),
              ],
            ),

            /// An example of [IconTemplate].
            IconTemplate(title: "Ejemplo de Íconos", items: [
              IconItemModel(
                  title: "Título",
                  subtitle: "Subtítulo",
                  label: 'Info',
                  icon: Icons.info,
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Ícono presionado')),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
