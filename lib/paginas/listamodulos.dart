import 'package:appcompleto/paginas/elementosformulario.dart';
import 'package:appcompleto/paginas/login.dart';
import 'package:appcompleto/paginas/productos.dart';
import 'package:appcompleto/paginas/productosyservicios.dart';
import 'package:appcompleto/paginas/registrar.dart';
import 'package:appcompleto/paginas/servicios.dart';
import 'package:appcompleto/paginas/usuariosregistrados.dart';
import 'package:flutter/material.dart';

class listamodulos extends StatefulWidget {
  const listamodulos({super.key});

  @override
  State<listamodulos> createState() => _listamodulosState();
}

class _listamodulosState extends State<listamodulos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text("Listado de Modulos"),
      ),

      body:
      Center(
        child: Container(
              width: 320,
              height: 650,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.black,
                  blurRadius:20.0,
                  offset: Offset(10, 10)

                )]
              ),
          child: ListView( 
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo de LOGIN"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo de REGISTRAR"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registrar(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo Prod y Servi"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => productosyservicios(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo Productos"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => productos(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo Servicios"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => servicios(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo Elem Form"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => elementosFormulario(),));
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo Usuarios"),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => usuariosRegistrados(),));
                  }, child: Text("Ir"))
              ],),
            ],
          ),

        ),

      ) 


    );
  }
}