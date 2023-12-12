import 'package:flutter/material.dart';
import 'package:proyectoinicio/widgets/registration-form.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
                      "Formulario de nuevo registro",
            style: TextStyle(color: Colors.white),    
            )      
        ),
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
                  'assets/inicio.png', // Reemplaza con la ruta de tu imagen
                  height: 240.0, // Ajusta la altura según tus necesidades
                  width: 340.0, // Ajusta el ancho según tus necesidades
                ),
              ),
              const SizedBox(height: 16.0),
              const RegistroForm()
              ]
              ),
      ),
    );
  }
}
