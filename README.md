# Sistema de Diseño Basado en Atomic Design

Este proyecto implementa un sistema de diseño en Flutter basado en el concepto de Atomic Design, que descompone la interfaz de usuario en componentes reutilizables. Los niveles de Atomic Design incluyen Átomos, Moléculas, Organismos, Templates y Páginas.

# Documentación de Widgets

## Átomos

### ButtonWidget

#### Descripción
`ButtonWidget` es un botón personalizado que puede ser utilizado en diferentes partes de la aplicación.

#### Propiedades
- `label` (String): El texto que se mostrará en el botón.
- `onPressed` (VoidCallback): La función que se ejecutará cuando el botón sea presionado.

#### Ejemplo de Uso
```dart
ButtonWidget(
  label: 'Presionar',
  onPressed: () {
    print('Botón presionado');
  },
)
```
### LabelWidget

#### Descripción
`LabelWidget` es un widget de texto simple que muestra una etiqueta.

#### Propiedades
- `text` (String): El texto que se mostrará en la etiqueta.

#### Ejemplo de Uso
```dart
LabelWidget(text: 'Este es un texto de etiqueta')
```

## Moléculas

### LabelledInputWidget

#### Descripción
`LabelledInputWidget` es un widget que combina una etiqueta con un campo de entrada de texto.

#### Propiedades
- `label` (String): El texto de la etiqueta.
- `controller` (TextEditingController): El controlador del campo de texto.
- `obscureText` (bool, opcional): Si el texto debe estar oculto (por ejemplo, para contraseñas).

#### Ejemplo de Uso
```dart
LabelledInputWidget(
  label: 'Nombre de usuario',
  controller: TextEditingController(),
)
```
### ProfileCardWidget

#### Descripción
`ProfileCardWidget` es un widget que muestra la información del perfil de un usuario en forma de tarjeta.

#### Propiedades
- `name` (String): El nombre del usuario.
- `email` (String): El correo electrónico del usuario.

#### Ejemplo de Uso
```dart
ProfileCardWidget(
  name: 'John Doe',
  email: 'john@example.com',
)
```
## Organismos

### LoginFormWidget

#### Descripción
`LoginFormWidget` es un formulario de inicio de sesión con campos para el email y la contraseña.

#### Propiedades
- `onLogin` (void Function(String email, String password)): La función que se ejecutará cuando se presione el botón de inicio de sesión, recibiendo el email y la contraseña como parámetros.

#### Ejemplo de Uso

```dart
LoginFormWidget(
  onLogin: (email, password) {
    print('Email: $email, Contraseña: $password');
  },
)
```
### ProfileListWidget

#### Descripción
`ProfileListWidget` es un widget que muestra una lista de perfiles de usuarios.

#### Propiedades
- `profiles` (List<Map<String, String>>): Una lista de perfiles, donde cada perfil es un mapa con claves `name` y `email`.

#### Ejemplo de Uso
```dart
ProfileListWidget(
  profiles: [
    {'name': 'John Doe', 'email': 'john@example.com'},
    {'name': 'Jane Smith', 'email': 'jane@example.com'},
  ],
)
```
## Templates

### LoginTemplateWidget

#### Descripción
`LoginTemplateWidget` es una plantilla que proporciona una estructura básica para una página de inicio de sesión. Contiene un formulario de inicio de sesión con campos para email y contraseña.

#### Propiedades
- `title` (String): El título que se mostrará en el `AppBar`.
- `onLogin` (void Function(String email, String password)): La función que se ejecutará cuando se presione el botón de inicio de sesión, recibiendo el email y la contraseña como parámetros.

#### Ejemplo de Uso
```dart
LoginTemplateWidget(
  title: 'Iniciar Sesión',
  onLogin: (email, password) {
    print('Email: $email, Contraseña: $password');
  },
)
```
### ProfilePageTemplateWidget

#### Descripción
`ProfilePageTemplateWidget` es una plantilla que muestra una lista de perfiles dentro de una estructura de página básica.

#### Propiedades
- `title` (String): El título que se mostrará en el `AppBar`.
- `profiles` (List<Map<String, String>>): Una lista de perfiles, donde cada perfil es un mapa con claves `name` y `email`.

#### Ejemplo de Uso
```dart
ProfilePageTemplateWidget(
  title: 'Lista de Perfiles',
  profiles: [
    {'name': 'John Doe', 'email': 'john@example.com'},
    {'name': 'Jane Smith', 'email': 'jane@example.com'},
  ],
)
```
## Páginas

### LoginPage

#### Descripción
`LoginPage` es una página que muestra un formulario de inicio de sesión.

#### Ejemplo de Uso
No es necesario un uso directo. Esta página hace uso de `LoginTemplate`.

### ProfileListPage

#### Descripción
`ProfileListPage` es una página que muestra una lista de perfiles de usuario.

#### Propiedades
- `profiles` (List<Map<String, String>>): Una lista de perfiles, donde cada perfil es un mapa con claves `name` y `email`.

#### Ejemplo de Uso
No es necesario un uso directo. Esta página hace uso de `ProfilePageTemplate`.
