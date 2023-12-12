import 'package:flutter/material.dart';
import 'package:proyectoinicio/app/imagefromassets.dart';
import 'package:proyectoinicio/ui/menu-lateral.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Center(
            child: Text(
          "Santiago Venegas - 4to A",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Color.fromARGB(255, 87, 47, 233),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTitle(),
            const SizedBox(height: 16.0),
            _buildImage(),
            const SizedBox(height: 16.0),
            _buildButon('Boton 1'),
            _buildButon('Boton 2'),
            _buildButon('Boton 3')
          ],
        ),
      ),      
      drawer: MenuLateral(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.back_hand),
            label: 'Atras',
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() => Text(
        widget.title,
        textAlign: TextAlign.center,
      );
  Widget _buildImage() => const ImageFromAssets(
        imagePath: 'assets/perro.jpg',
      );
}

Widget _buildButon(String texto) {
  return ElevatedButton(
    child: Text(texto),
    onPressed: () {
      // Acción del botón
    },
  );
}
