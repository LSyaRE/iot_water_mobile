import 'package:flutter/material.dart';
import 'package:iot_water_mobile/layouts/auth_layout.dart';
import 'package:iot_water_mobile/modules/auth/views/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return AuthLayout(children: [
      Text("Registrarse"),
      SizedBox(
        width: 250,
        child: TextField(
          maxLength: 10,
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
        child: Text("Registrarse"),
        onPressed: () => print("Registrandose..."),
      ),
      ElevatedButton(
        child: Text("Iniciar Sesion"),
        onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginPage())),
      )
    ]);
  }
}
