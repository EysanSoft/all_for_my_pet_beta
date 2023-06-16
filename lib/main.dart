import 'package:ejemplo_splash/pages/reciboCompra.dart';
import 'package:ejemplo_splash/pages/solicitarPedido.dart';
import 'package:ejemplo_splash/pages/confirmarPedido.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo_splash/splash/splas_view.dart';
import 'package:ejemplo_splash/pages/inicio.dart';
import 'package:ejemplo_splash/pages/ProgressView.dart';
import 'package:ejemplo_splash/pages/ProgressView2.dart';
import 'package:ejemplo_splash/pages/Registro.dart';
import 'package:ejemplo_splash/pages/login.dart';
import 'package:ejemplo_splash/pages/recoverPassword.dart';
import 'package:ejemplo_splash/pages/home.dart';
import 'package:ejemplo_splash/pages/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movil I',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash',
      routes: {
        'inicio': (BuildContext context) => const Inicio(),
        'login': (BuildContext context) => const Login(),
        'registro': (BuildContext context) => const Registro(),
        'password': (BuildContext context) => const RecoverPassword(),
        'progress': (BuildContext context) => const ProgressView(),
        'progress2': (BuildContext context) => const ProgressView2(), 
        'splash': (BuildContext context) => const SplashView(),
        'home': (BuildContext context) => const Home(),
        'home2': (BuildContext context) => const Home2(),
        // Pruebas mandaditos express
        'pedido': (BuildContext context) => const SolicitarPedido(),
        'pedido2': (BuildContext context) => const ConfirmarPedido(),
        'recibo': (BuildContext context) => const reciboCompra(),
      },
    );
  }
}