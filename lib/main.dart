import 'package:flutter/material.dart';

void main() {
  runApp(const MyContadorAvanzaado());
}

class MyContadorAvanzaado extends StatefulWidget {
  const MyContadorAvanzaado({super.key});

  @override
  State<MyContadorAvanzaado> createState() => _MyContadorAvanzaadoState();
}

class _MyContadorAvanzaadoState extends State<MyContadorAvanzaado> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contador avanzado")),
        body: Column(),
      ),
    );
  }
}
