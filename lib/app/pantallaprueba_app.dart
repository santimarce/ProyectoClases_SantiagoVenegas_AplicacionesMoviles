import 'package:flutter/material.dart';
import 'package:proyectoinicio/ui/home/homepage.dart';
import 'package:proyectoinicio/ui/login/login-page.dart';
import 'package:proyectoinicio/ui/login/registration-page.dart';
import 'package:proyectoinicio/ui/menuventa/menu-page.dart';
import 'package:proyectoinicio/ui/qr-page.dart';
import 'package:proyectoinicio/ui/rts-menulateral/forma-clientes.dart';

class SmogeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
      initialRoute: "Login",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext) => HomePage(title: 'Inicio',),
        "Registro": (BuildContext) => RegistrationPage(),
        "FormClt": (BuildContext) => FormaClientePage(),
        "QrPart": (BuildContext) => QRScannerWidget(),
        "Menu": (BuildContext) => MenuPage(),
        // "Tabla": (BuildContext) => ModificarPages(),
      },
    );
  }
}
