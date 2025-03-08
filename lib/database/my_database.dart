// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:flutter/services.dart';
//
// class MyDatabase {
//   Future<Database> initDatabase() async {
//     Directory appDocDir = await getApplicationDocumentsDirectory();
//     String databasePath = join(appDocDir.path, 'my_database.db');
//     return await openDatabase(databasePath);
//   }
//   Future<bool> copyPasteAssetFileToRoot() async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, "my_database.db");
//
//     if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
//       ByteData data =
//       await rootBundle.load(join('assets/database', 'my_database.db'));
//       List<int> bytes =
//       data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//       await File(path).writeAsBytes(bytes);
//       return true;
//     }
//     return false;
//   }
//   Future<List<Map<String, dynamic>>> getDetails() async {
//     Database db = await initDatabase();
//     List<Map<String, dynamic>> list = await db.rawQuery("select * from user");
//     return list;
//   }
//   Future<int> deleteDetail(int id) async {
//     Database db = await initDatabase();
//     int userId = await db.delete("user",where: "userId=?",whereArgs: [id]);
//     return userId;
//   }
//   Future<int> insertDetail(Map<String, dynamic> map) async {
//     Database db = await initDatabase();
//     int insert = await db.insert("user", map);
//     return insert;
//   }
// }
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'my_database.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "my_database.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'my_database.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }
  Future<List<Map<String, dynamic>>> getDetails() async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> list = await db.rawQuery("select * from user");
    return list;
  }
  Future<int> insertDetail(Map<String, dynamic> map) async {
    Database db = await initDatabase();
    int insert = await db.insert("user", map);
    return insert;
  }
  Future<int> deleteDataById(int userId) async {
    Database db = await initDatabase();
    return await db.delete("user", where: "userId = ?", whereArgs: [userId]);
  }

  Future<int> updateDataById(Map<String,dynamic> map) async {
    Database db = await initDatabase();
    int update = await  db.update("user", map, where: "userId = ?", whereArgs: [map["userId"]]);
    return update;
  }
}