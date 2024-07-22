import 'package:appcompleto/BaseDatos/nota.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operaciones {


  //Crear la Base de Datos y la Tabla
  Future<Database> _abrirBD() async{

    return openDatabase(join(await getDatabasesPath(),'appdb.db'),
            onCreate: (db, version) {
              return db.execute("CREATE TABLE IF NOT EXISTS usuarios (id INTEGER PRIMARY KEY, nombre TEXT, apellido TEXT, correo TEXT, contrasena TEXT, confcontrasena TEXT)");
            }, version: 1,
    
    );

  }

// Insertar Elemento a la Tabla 
 Future<void> _isertarAppbd(Nota nota) async{
  Database database=await _abrirBD();
  database.insert("usuarios", nota.toMap());
 }

}