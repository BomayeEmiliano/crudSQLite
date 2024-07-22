
import 'package:flutter/material.dart';

class registrar extends StatefulWidget {
  const registrar({super.key});

  @override
  State<registrar> createState() => _registrarState();
}

class _registrarState extends State<registrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text("Registrar"),),


      body: Center(
        child: Container(
                width: 300,
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius:20.0,
                    offset: Offset(10, 10)
        
                  )]
                ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Nombre:"
                  ),
                 ),
                 TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Apellidos:"
                  ),
                 ),
                 TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Correo Electronico:"
                  ),
                 ),
                 TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Contraseña:"
                  ),
                 ),
                 TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Confirmar Contraseña:"
                  ),
                 ),
                OutlinedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => listamodulos(),));
                }, child: Text("Registar"))
            ],
            ),
        ),
      ),
      
    );
  }
}