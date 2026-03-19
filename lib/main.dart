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
                        onPressed: () {},
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
                        onPressed: () {},
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(onPressed: () {}, child: Text("Reset")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
