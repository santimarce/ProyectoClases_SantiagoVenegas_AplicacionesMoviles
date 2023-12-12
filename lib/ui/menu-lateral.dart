import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Santiago Venegas"),
            decoration: BoxDecoration(color: Color.fromARGB(255, 87, 47, 233)),
            accountEmail: null,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "Home");
            },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'FormClt');
            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Formulario de Clientes"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'QrPart');
            },
            child: ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Verificar QR"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'Menu');
            },
            child: ListTile(
              leading: Icon(Icons.menu),
              title: Text("Venta de menú"),
            ),
          ),
        ],
      ),
    );
  }
}
