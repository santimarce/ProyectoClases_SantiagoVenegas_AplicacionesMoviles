import 'package:flutter/material.dart';
import 'package:proyectoinicio/widgets/menu-widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<MenuProduct> productss = [
    MenuProduct(
      name: 'Producto 1',
      description: 'Descripción del producto 1',
      imageUrl: 'assets/banana.jpg',
      buttonText: 'Pedir',
    ),
    MenuProduct(
      name: 'Producto 2',
      description: 'Descripción del producto 2',
      imageUrl: 'assets/carne.jpg',
      buttonText: 'Pedir',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Menú",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 87, 47, 233),
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
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 50.0,
          ),
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/menu.jpg', // Reemplaza con la ruta de tu imagen
                height: 240.0, // Ajusta la altura según tus necesidades
                width: 300.0, // Ajusta el ancho según tus necesidades
              ),
            ),
            const SizedBox(height: 20.0),
            MenuWidget(
                products: productss), // No se necesita llamar a setState aquí
          ],
        ),
      ),
    );
  }
}
