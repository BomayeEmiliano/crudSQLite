import 'package:appcompleto/BaseDatos/nota.dart';
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

    return Scaffold(
      appBar: AppBar(title: Text("Usuarios registrados"),),

      body: Center(
        child: Container(
          child: _miLista(),
        )
      ),
    );
  }
}

class _miLista extends StatefulWidget {

  @override
  State<_miLista> createState() => _miListaState();
}

class _miListaState extends State<_miLista> {
  List<Nota> notas=[];

  @override
  void initState() {
    _cargarDatos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notas.length,
      itemBuilder: (_, i) => _crearItem(i),
       );
  }

  _cargarDatos() async{
    List<Nota> auxNota= await Operaciones.notas();
    setState(() {
      notas= auxNota;
    });
     
  }

  _crearItem(int i) {
    return ListTile(
      title: Text(notas[i].nombre),
    );
  }
}