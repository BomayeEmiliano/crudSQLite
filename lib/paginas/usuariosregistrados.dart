import 'package:appcompleto/BaseDatos/operaciones.dart';
import 'package:flutter/material.dart';

class usuariosRegistrados extends StatefulWidget {
  const usuariosRegistrados({super.key});

  @override
  State<usuariosRegistrados> createState() => _usuariosRegistradosState();
}

class _usuariosRegistradosState extends State<usuariosRegistrados> {
  @override
  Widget build(BuildContext context) {

   Operaciones.notas();

    return Scaffold(
      appBar: AppBar(title: Text("Usuarios registrados"),),

      body: Center(
        child: Text("hola"),
      ),
    );
  }
}