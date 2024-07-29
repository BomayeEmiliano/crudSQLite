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
    return Dismissible( //widget que permite manipular los datos de un ListTitle
      key: Key(i.toString()),
      direction: DismissDirection.startToEnd, //permite laeliminacion de un elemento de la lista desplazandolo a de izquierda a derecha
      background: Container(
        color: Colors.blue,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(Icons.delete, color: Colors.white,),
              Text("Eliminar", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
      onDismissed: (direction) {
        print("Eliminado");
        Operaciones.eliminarAppbd(notas[i]);  //llamamos al metodo eliminar de la clase Operaciones
      },
      child: ListTile(
        title: Text(notas[i].nombre),
      ),
    );
  }
}