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
                Text("Modulo 7"),
                OutlinedButton(
                  onPressed: () {
                    
                  }, child: Text("Ir"))
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.network("https://cdn.prod.website-files.com/608710000c1ca9c8a85c798e/66732ec522fd050cc2e45728_heladeri%CC%81a%20tpv%20sistema-p-800.webp", width: 100, height: 100,),
                Text("Modulo 8"),
                OutlinedButton(
                  onPressed: () {
                    
                  }, child: Text("Ir"))
              ],),
            ],
          ),

        ),

      ) 


    );
  }
}


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text("Login"),
      ),

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
             Icon(Icons.people, size: 100,color: Colors.blue,),
             SizedBox(
              width: 250,
               child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Usuario:"
                ),
               ),
             ),
             SizedBox(
              width: 250,
               child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Contraseña:"
                ),
               ),
             ),
             ElevatedButton(
              onPressed: () {
                
              }, 
              child: Text("Ingresar")),
              ElevatedButton(
              onPressed: () {
                  
              }, 
              child: Text("Resgistrar")),
              OutlinedButton(
                onPressed: () {
                  
                
              }, 
              child: Text("¿Olvidates tu contraseña?"))
             ],
          ),

        ),

      ) 

    );
  }
}

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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => listamodulos(),));
                }, child: Text("Registar"))
            ],
            ),
        ),
      ),
      
    );
  }
}


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





class productos extends StatefulWidget {
  const productos({super.key});

  @override
  State<productos> createState() => _productosState();
}

class _productosState extends State<productos> {
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
          child:  
              
              Column(
                children: [
                  Text("PRODUCTOS"),
                  //Titulo
                      Text("OFERTAS", style: TextStyle(fontSize: 20, color: Colors.orange, fontFamily: GoogleFonts.lato().fontFamily),),
                // Primera Fila
                SizedBox(
                  width: 130,
                  height: 250,
                  child: ListView( scrollDirection: Axis.horizontal,
                    children: [
                      //Primer elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),
                  //Titulo
                      Text("Productos", style: TextStyle(fontSize: 20, color: Colors.orange, fontFamily: GoogleFonts.lato().fontFamily),),

                // Segunda Fila

                Row(
                  children: [

                   // Elemento Izquierdo
                    SizedBox(
                  width: 150,
                  height: 200,
                  child: ListView(
                    children: [
                      //Primer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),
                  

                   //Elemento Derecho
                      SizedBox(
                  width: 150,
                  height: 200,
                  child: ListView(
                    children: [
                      //Primer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),

                  ],
                )

                ],
              )

              


          ),
        ),
      

    );
  }
}


class servicios extends StatefulWidget {
  const servicios({super.key});

  @override
  State<servicios> createState() => _serviciosState();
}

class _serviciosState extends State<servicios> {
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
          child:  
              
              Column(
                
                children: [
                  Text("SERVICIOS"),
                  //Titulo
                      Text("OFERTAS", style: TextStyle(fontSize: 20, color: Colors.orange, fontFamily: GoogleFonts.lato().fontFamily),),
                // Primera Fila
                SizedBox(
                  
                  width: 130,
                  height: 250,
                  child: ListView( scrollDirection: Axis.horizontal,
                    children: [
                      //Primer elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        width: 150,
                         height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),
                  //Titulo
                      Text("Productos", style: TextStyle(fontSize: 20, color: Colors.orange, fontFamily: GoogleFonts.lato().fontFamily),),

                // Segunda Fila

                Row(
                  children: [

                   // Elemento Izquierdo
                    SizedBox(
                  width: 150,
                  height: 200,
                  child: ListView(
                    children: [
                      //Primer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),
                  

                   //Elemento Derecho
                      SizedBox(
                  width: 150,
                  height: 200,
                  child: ListView(
                    children: [
                      //Primer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //Segundo elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      ),
                      //tercer elemento
                      SizedBox(
                        child: Column(
                          children: [
                            Image.network("https://www.toyota.mx/sites/default/files/vehiculos/Hilux21_DobleCabinaSR.png", height: 100, width: 100,),
                            Icon(Icons.photo),
                                  Text("Toyota - Hilux"),
                                  OutlinedButton(onPressed: () {
                                    
                                  }, child: Text("Comprar")),
                          ],
                        ),
                      )
                    ],
                  )
                ),

                  ],
                )

                ],
              )

              


          ),
        ),
      

    );
  }
}


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


