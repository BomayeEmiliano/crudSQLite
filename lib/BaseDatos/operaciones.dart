import 'package:appcompleto/BaseDatos/nota.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operaciones {


  //Crear la Base de Datos y la Tabla
  static Future<Database> _abrirBD() async{

    return openDatabase(join(await getDatabasesPath(),'appdb.db'),
            onCreate: (db, version) {
              return db.execute("CREATE TABLE IF NOT EXISTS usuarios (id INTEGER PRIMARY KEY, nombre TEXT, apellido TEXT, correo TEXT, contrasena TEXT, confcontrasena TEXT)");
            }, version: 1,
    
    );

  }

// Insertar Elemento a la Tabla 
 static Future<void> insertarAppbd(Nota nota) async{
  Database database=await _abrirBD();
  database.insert("usuarios", nota.toMap());
 }

//Listas los elementos de la tabla Usuarios
 static Future<List<Nota>> notas() async{
  Database database=await _abrirBD();
  
  //Listar los elementos del map
  final List<Map<String,dynamic>> notasMap= await database.query("usuarios");

  for (var n in notasMap) {
    print("___"+ n['id']);
    print("___"+ n['nombre']);
    print("___"+ n['apellido']);
    print("___"+ n['correo']);
    print("___"+ n['contrasena']);
    print("___"+ n['confContrasena']);
  }

  return List.generate(notasMap.length, (index)=> 
    Nota(
      id: notasMap[index]['id'], 
      nombre: notasMap[index]['nombre'], 
      apellido: notasMap[index]['apellido'], 
      correo: notasMap[index]['correo'], 
      contrasena: notasMap[index]['contrasena'], 
      confContrasena: notasMap[index]['confContrasena']
      ), 
      );

 }

}