
import 'package:flutter/material.dart';

class registrar extends StatefulWidget {
  const registrar({super.key});

  @override
  State<registrar> createState() => _registrarState();
}

class _registrarState extends State<registrar> {

  final _key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text("Registrar"),),


      body: Center(
        child: Container(
                padding: EdgeInsets.all(15),
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
            child: Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "No se adminten campos vacios";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Nombre:"
                    ),
                   ),
                   TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "No se adminten campos vacios";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Apellidos:"
                    ),
                   ),
                   TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "No se adminten campos vacios";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Correo Electronico:"
                    ),
                   ),
                   TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "No se adminten campos vacios";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Contraseña:"
                    ),
                   ),
                   TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "No se adminten campos vacios";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Confirmar Contraseña:"
                    ),
                   ),
                   SizedBox(
                    height: 10,
                   ),
                  OutlinedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        print("Guardado...");
                      }
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => listamodulos(),));
                  }, child: Text("Registar"))
              ],
              ),
            ),
        ),
      ),
      
    );
  }
}