import 'package:flutter/material.dart';
import 'package:proyectoinicio/widgets/clientes-form.dart';

class FormaClientePage extends StatefulWidget {
  const FormaClientePage({Key? key}) : super(key: key);

  @override
  _FormaClientePageState createState() => _FormaClientePageState();
}

class _FormaClientePageState extends State<FormaClientePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        title: const Center(
            child: Text(
          "Formulario de nuevo cliente",
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
                child: Text(
                  "Ingrese sus datos porfavor:",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16.0),
              const FormaClientes()
            ]),
      ),
    );
  }
}
