import 'package:civicapay_2022/Models/User.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  static Future<Database> _openDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'users.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, civiPoints INTEGER, certifications INTEGER)",
        );
      },
      version: 1,
    );
  }

  static Future<void> insert(User user) async {
    Database database = await _openDB();

    return database.insert(
      "users",
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    ) as Future<void>;
  }

  static Future<void> delete(User user) async {
    Database database = await _openDB();

    return database.delete("users", where: "id = ?", whereArgs: [user.id])
        as Future<void>;
  }

  static Future<void> update(User user) async {
    Database database = await _openDB();

    return database.update("users", user.toMap(),
        where: "id = ?", whereArgs: [user.id]) as Future<void>;
  }

  static Future<List<User>> users() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> usersMap = await database.query("users");

    return List.generate(
        usersMap.length,
        (i) => User(
              id: usersMap[i]['id'],
              name: usersMap[i]['name'],
              civiPoints: usersMap[i]['civiPoints'],
              certifications: usersMap[i]['certifications'],
            ));
  }

  // CON SENTENCIAS
  static Future<void> insertar2(User user) async {
    Database database = await _openDB();
    var resultado = await database.rawInsert(
        "INSERT INTO users (id, name, civiPoints, certifications)"
        " VALUES (${user.id}, ${user.name}, ${user.civiPoints}, ${user.certifications})");
  }
}
