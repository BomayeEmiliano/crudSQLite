import 'package:appcompleto/paginas/productos.dart';
import 'package:appcompleto/paginas/servicios.dart';
import 'package:flutter/material.dart';


class productosyservicios extends StatefulWidget {
  const productosyservicios({super.key});

  @override
  State<productosyservicios> createState() => _productosyserviciosState();
}

class _productosyserviciosState extends State<productosyservicios> {

  int valorIcono=0;
  List paginas=[
    productos(),
    servicios()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue,

      appBar: AppBar(title: Text("Productos y Servicios"),),

      body: paginas[valorIcono],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            valorIcono=value;
          });
        },
        items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Productos"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home_outlined), label: "Servicios"),
                ]
                ),
    );
  }
}
