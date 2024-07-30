import 'package:appcompleto/BaseDatos/nota.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operaciones {


  //Crear la Base de Datos y la Tabla
  static Future<Database> _abrirBD() async{

    return openDatabase(join(await getDatabasesPath(),'appdb.db'),
            onCreate: (db, version) {
              return db.execute("CREATE TABLE IF NOT EXISTS usuarios (id INTEGER PRIMARY KEY, nombre TEXT, apellido TEXT, correo TEXT, contrasena TEXT, confContrasena TEXT)");
            }, 
            version: 1,
    
    );

  }

// Insertar Elemento a la Tabla 
 static Future<void> insertarAppbd(Nota nota) async{
  Database db=await _abrirBD();
  db.insert("usuarios", nota.toMap());
 }

//Listas los elementos de la tabla Usuarios
 static Future<List<Nota>> notas() async{
  Database db=await _abrirBD();
  
  //Listar los elementos del map
  final List<Map<String,dynamic>> notasMaps= await db.query("usuarios");

  for (var n in notasMaps) {
    //print("___"+ n['id']);
    print("___"+ n['nombre'].toString());
    print("___"+ n['apellido'].toString());
    print("___"+ n['correo'].toString());
    print("___"+ n['contrasena'].toString());
    print("___"+ n['confContrasena'].toString());
  }

  return List.generate(notasMaps.length, (index)=> 
    Nota(
      id: notasMaps[index]['id'], 
      nombre: notasMaps[index]['nombre'], 
      apellido: notasMaps[index]['apellido'], 
      correo: notasMaps[index]['correo'], 
      contrasena: notasMaps[index]['contrasena'], 
      confContrasena: notasMaps[index]['confContrasena']
      ), 
      );

 }

static Future<void> eliminarAppbd(Nota nota) async{
  Database db=await _abrirBD();
  db.delete("usuarios", where: "id = ?",whereArgs: [nota.id]);
 }


static Future<void> actualizarAppbd(Nota nota) async{
  Database db=await _abrirBD();
  db.update("usuarios",nota.toMap(),where: "id = ?",whereArgs: [nota.id]);
 }

}