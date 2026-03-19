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
  int contador = 0;
  String mensaje = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                        onPressed: () {
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
                        },
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
                        onPressed: () {
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
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      contador = 0;
                    });
                  },
                  child: Text("Reset"),
                ),
                Text(mensaje),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
