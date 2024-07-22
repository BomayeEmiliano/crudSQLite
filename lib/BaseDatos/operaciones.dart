import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operaciones {


  //Crear la Base de Datos y la Tabla
  Future<Database> _abrirBD() async{

    return openDatabase(join(await getDatabasesPath(),'appdb.db'),
            onCreate: (db, version) {
              return db.execute("CREATE TABLE IF NOT EXISTS appdb (id INTEGER PRIMARY KEY, nombre TEXT, apellido TEXT, correo TEXT, contrasena TEXT, confcontrasena TEXT)");
            }, version: 1,
    
    );

  }


  
}