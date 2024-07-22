import 'package:appcompleto/paginas/listamodulos.dart';
import 'package:flutter/material.dart';

class elementosFormulario extends StatefulWidget {
  const elementosFormulario({super.key});

  @override
  State<elementosFormulario> createState() => _elementosFormularioState();
}


enum opcionesRadio {opcion1, opcion2}

class _elementosFormularioState extends State<elementosFormulario> {

opcionesRadio opcionSeleccion=opcionesRadio.opcion1;

bool chek1=false, chek2=false;

String valorOpcion="Selecciona una opcion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Elementos de un Formulario"),),

body: Column(
  children: [
    Text("Radio Buttons"),
ListTile(
  title: Text("Opcion 1"),
  leading: Radio(
  value: opcionesRadio.opcion1, 
  groupValue: opcionSeleccion, 
  onChanged: (value) {
  setState(() {
    opcionSeleccion=value!;
  });
    },),
),
ListTile(
  title: Text("Opcion 2"),
  leading: Radio(
  value: opcionesRadio.opcion2, 
  groupValue: opcionSeleccion, 
  onChanged: (value) {
  setState(() {
    opcionSeleccion=value!;
  });
    },),
),
Text("CheckBoxs"),
CheckboxListTile(
  title: Text("Check1"),
  value: chek1, 
  onChanged: (value) {
    setState(() {
      chek1=value!;
    });
  },),
  CheckboxListTile(
  title: Text("Check2"),
  value: chek2, 
  onChanged: (value) {
    setState(() {
      chek2=value!;
    });
  },),

  DropdownButton(
    value: valorOpcion,
    items: ["Selecciona una opcion","opcion 1","opcion2","opcion3"].map((String value)
    {
      return DropdownMenuItem(
        value: value,
        child: Text(value));
    }
    ).toList(), 
    onChanged:(value) {
      setState(() {
        valorOpcion=value!;
      });
    },),

  OutlinedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => listamodulos(),));
    }, 
    child: Text("Guardar"))

  ],
),


    );
  }
}