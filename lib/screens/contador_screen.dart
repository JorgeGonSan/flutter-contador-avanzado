import 'package:flutter/material.dart';

class MyContadorAvanzado extends StatefulWidget {
  const MyContadorAvanzado({super.key});

  @override
  State<MyContadorAvanzado> createState() => _MyContadorAvanzadoState();
}

class _MyContadorAvanzadoState extends State<MyContadorAvanzado> {
  int contador = 0;
  String mensaje = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador avanzado"),
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(contador.toString(), style: TextStyle(fontSize: 50)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),

                    child: IconButton(
                      onPressed: _incrementar,

                      icon: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),

                    child: IconButton(
                      onPressed: _decrementar,
                      icon: Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: _reset, child: Text("Reset")),
              Text(mensaje),
            ],
          ),
        ),
      ),
    );
  }

  //  Funciones

  //  Incrementa el contador en 1 hasta un máximo de 20 y muestra msg del límite
  void _incrementar() {
    setState(() {
      if (contador < 20) {
        contador++;
      }
      if (contador == 20) {
        mensaje = "No puede ser mayor que 20";
      } else {
        mensaje = "";
      }
    });
  }

  //  Decrementa el contador en 1 hasta 0 y muestra msg del límite
  void _decrementar() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
      if (contador == 0) {
        mensaje = "No puede ser menor que 0";
      } else {
        mensaje = "";
      }
    });
  }

  //Establece el contador a 0
  void _reset() {
    setState(() {
      contador = 0;
      mensaje = "";
    });
  }
}
