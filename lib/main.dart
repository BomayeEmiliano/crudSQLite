import 'package:appcompleto/paginas/listamodulos.dart';
import 'package:appcompleto/paginas/login.dart';
import 'package:appcompleto/paginas/productos.dart';
import 'package:appcompleto/paginas/productosyservicios.dart';
import 'package:appcompleto/paginas/registrar.dart';
import 'package:appcompleto/paginas/servicios.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loading(),
    );
  }
}


class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000),() => Navigator.push(context,MaterialPageRoute(builder: (context) => listamodulos(),)),);
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.blue,

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
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png", width: 100, height: 100,),
              LinearProgressIndicator(),
              Text("Loading....")
            ],
          ),

        ),

      ) 

    );
  }
}

