import 'package:block/features/homepage/data/models/application.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

abstract class ApplicationDataSourceBase {

  Future<List<ApplicationModel>> all();

  Future<ApplicationModel> find(int id);

  Future<void> create(ApplicationModel application);

  Future<void> update(ApplicationModel application);

  Future<void> delete(int id);
}

class ApplicationDataBaseSource extends ApplicationDataSourceBase {

  Database? _db;

  String table;
  String dbname;

  ApplicationDataBaseSource(this.dbname, [this.table = "applications"]) : super();

  @override
  Future<List<ApplicationModel>> all() async {
    return await _execute(() async {
      List<ApplicationModel> result = [];

      (await _db?.query(table))?.forEach((Map<String, Object?> row) {
        result.add(ApplicationModel(
          id: (row["id"] as int?) ?? 0,
          name: (row["name"] as String?) ?? "",
          package: (row["package"] as String?) ?? "",
          is_blocked: (row["is_blocked"] as bool?) ?? false,
        ));
      });
      
      return result;
    });
  }

  @override
  Future<void> create(ApplicationModel application) async {
    await _execute(() async {
      await _db?.transaction((txn) async {
        await txn.insert(table, application.toMap(false));
      });
    });
  }

  @override
  Future<void> delete(int id) async {
    await _execute(() async {
      await _db?.delete(
        table, 
        where: "id = ?",
        whereArgs: [id],
      );
    });
  }

  @override
  Future<ApplicationModel> find(int id) async {
    return Future.value(null);
  }

  @override
  Future<void> update(ApplicationModel application) async {
    await _execute(() async {
      await _db?.update(
        table,
        application.toMap(false),
        where: "id = ?",
        whereArgs: [application.id],
      );
    });
  }

  Future<T> _execute<T>(AsyncValueGetter<T> callback) async {
    try {
      _db = await openDatabase(dbname);
      return await callback();
    } finally {
      await _db?.close();
    }
  }
}
