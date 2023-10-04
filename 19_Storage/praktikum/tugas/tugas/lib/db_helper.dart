// import 'dart:async';
// import 'dart:convert';
// import 'package:file_picker/file_picker.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:storage/contact.dart';
// import 'package:flutter/material.dart';

// class DBHelper {
//   static final DBHelper _instance = DBHelper._internal();

//   factory DBHelper() => _instance;

//   DBHelper._internal();

//   late Database _db;

//   Future<Database> get database async {
//     if (_db != null) return _db;

//     _db = await initDB();
//     return _db;
//   }

//   Future<Database> initDB() async {
//     final databasesPath = await getDatabasesPath();
//     final path = join(databasesPath, 'contact.db');

//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (Database db, int version) async {
//         await db.execute('''
//           CREATE TABLE contacts (
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             name TEXT,
//             nomor TEXT,
//             date TEXT,
//             color INTEGER,
//             file_path TEXT
//           )
//         ''');
//       },
//     );
//   }

//   Future<int> insertContact(ContactData contact) async {
//     final db = await database;
//     return await db.insert('contacts', contact.toMap());
//   }

//   Future<List<ContactData>> getContacts() async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query('contacts');
//     return List.generate(maps.length, (i) {
//       return ContactData(
//         id: maps[i]['id'],
//         name: maps[i]['name'],
//         nomor: maps[i]['nomor'],
//         date: DateTime.parse(maps[i]['date']),
//         color: Color(maps[i]['color']),
//         file: maps[i]['file_path'] != null
//             ? platformFileFromMap(maps[i]['file_path'])
//             : null,
//       );
//     });
//   }

//   Future<int> updateContact(ContactData contact) async {
//     final db = await database;
//     return await db.update(
//       'contacts',
//       contact.toMap(),
//       where: 'id = ?',
//       whereArgs: [contact.id],
//     );
//   }

//   Future<void> deleteContact(int id) async {
//     final db = await database;
//     await db.delete(
//       'contacts',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
// }

// Map<String, dynamic> platformFileToMap(PlatformFile platformFile) {
//   return {
//     'name': platformFile.name,
//     'size': platformFile.size,
//     'path': platformFile.path,
//   };
// }

// PlatformFile platformFileFromMap(String filePath) {
//   final Map<String, dynamic> map = json.decode(filePath);
//   return PlatformFile(
//     name: map['name'],
//     size: map['size'],
//     path: map['path'],
//   );
// }
