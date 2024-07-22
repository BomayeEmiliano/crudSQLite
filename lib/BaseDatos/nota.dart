
//Creacion del MODELO
class Nota {

  final int id;
  final String nombre;
  final String apellido;
  final String correo;
  final String contrasena;
  final String confContrasena;

  Nota({required this.id, required this.nombre, required this.apellido, required this.correo, required this.contrasena, required this.confContrasena});

  //Creacion del MAPA
  Map<String, dynamic> toMap(){
    return {"id":id,"nombre":nombre,"apellido":apellido,"correo":correo,"contrasena":contrasena,"confContrasena":confContrasena};
  }

  
}