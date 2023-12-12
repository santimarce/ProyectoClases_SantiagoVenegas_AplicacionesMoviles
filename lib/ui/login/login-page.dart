import 'package:flutter/material.dart';
import 'package:proyectoinicio/widgets/login-form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Center(
            child: Text(
          "Inicio de sesión",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Color.fromARGB(255, 87, 47, 233),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 241, 240, 239),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 50.0,
            ),
          children: <Widget>[
            Center(
                child: Image.asset(
                  'assets/OIP.jpg', // Reemplaza con la ruta de tu imagen
                  height: 240.0, // Ajusta la altura según tus necesidades
                  width: 300.0, // Ajusta el ancho según tus necesidades
                ),
              ),
            const LoginForm()
          ]
        ),
      ),
    );
  }
}