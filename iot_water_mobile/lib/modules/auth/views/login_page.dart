import 'package:flutter/material.dart';
import 'package:iot_water_mobile/layouts/auth_layout.dart';
import 'package:iot_water_mobile/modules/auth/auth.dart';
import 'package:iot_water_mobile/modules/core/views/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final AuthenticationService authenticationService = AuthenticationService();
    return AuthLayout(
      children: [
        Text("Iniciar Sesion"),
        SizedBox(
          width: 250,
          child: TextField(
            maxLength: 13,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Cédula',
            ),
          ),
        ),
        SizedBox(
          width: 250,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Contraseña',
            ),
          ),
        ),
        ElevatedButton(
          child: Text("Ingresar"),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const DashboardPage())),
        ),
        ElevatedButton(
          child: Text("Registrarse"),
          style: ButtonStyle(backgroundColor: WidgetStateColor.transparent),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const RegisterPage())),
        ),
      ],
    );
  }
}
