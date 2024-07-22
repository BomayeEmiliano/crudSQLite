import 'package:flutter/material.dart';

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
                      Text("OFERTAS", style: TextStyle(fontSize: 20, color: Colors.orange,),),
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
                      Text("Productos", style: TextStyle(fontSize: 20, color: Colors.orange,),),

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