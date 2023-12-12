import 'package:flutter/material.dart';
import 'package:proyectoinicio/ui/home/homepage.dart';
import 'package:proyectoinicio/ui/login/registration-page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  static void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const HomePage(
                title: 'Inicio',
              )),
    );
  }

  static void registrationForm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage()),
    );
  }

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    // _email = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa tu correo electrónico';
                  }
                  if (!value.contains('@')) {
                    return 'Correo electrónico no válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    // _password = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa tu contraseña';
                  }
                  if (value.length < 6) {
                    return 'La contraseña debe tener al menos 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Iniciar sesión'),
                //color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    LoginForm.navigateToHome(context);
                  }
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Registrarte'),
                //color: Colors.blue,
                onPressed: () {
                    Navigator.pushNamed(context, 'Registro');                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
