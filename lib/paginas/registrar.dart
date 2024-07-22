
import 'package:flutter/material.dart';

class registrar extends StatefulWidget {
  const registrar({super.key});

  @override
  State<registrar> createState() => _registrarState();
}

class _registrarState extends State<registrar> {

  //Esta es la llave para verificar los campos vacios
  final _key=GlobalKey<FormState>();
  //Este es el controlador para obtener los valores de los campos
  final nombreControlador=TextEditingController();
  final apellidoControlador=TextEditingController();
  final correoControlador=TextEditingController();
  final contrasenaControlador=TextEditingController();
  final confContrasenaControlador=TextEditingController();

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
                    controller: nombreControlador,
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
                    controller: apellidoControlador,
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
                    controller: correoControlador,
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
                    controller: contrasenaControlador,
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
                    controller: confContrasenaControlador,
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
                        print("Guardado... \n Nombre:"+nombreControlador.text);
                        print("Apellido:"+apellidoControlador.text);
                        print("Correo:"+correoControlador.text);
                        print("Contraseña:"+contrasenaControlador.text);
                        print("Confirmación Contraseña:"+confContrasenaControlador.text);
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