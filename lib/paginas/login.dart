import 'package:flutter/material.dart';

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